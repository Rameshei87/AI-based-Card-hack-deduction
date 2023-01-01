BEGIN;

CREATE SEQUENCE schema_version_id_seq;

CREATE TABLE schema_version (
  id      INT PRIMARY KEY DEFAULT nextval('schema_version_id_seq'),
  name    TEXT NOT NULL UNIQUE,
  version TEXT NOT NULL
);

INSERT INTO schema_version (name, version) VALUES
  ('cdr_sql', '1');

-- file

INSERT INTO schema_version (name, version) VALUES
  ('file', '1');

CREATE SEQUENCE file_id_seq;

CREATE TABLE file (
  id              INT PRIMARY KEY DEFAULT nextval('file_id_seq'),
  filename        TEXT,
  processing_date TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL
);

CREATE TABLE table_updates (
  table_name  TEXT PRIMARY KEY,
  last_update TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE cs_summary_daily (
  record_date        DATE NOT NULL,
  cell_id            TEXT NOT NULL,
  uniq_msisdn        INT NOT NULL DEFAULT 0,
  uniq_orig_msisdn   INT NOT NULL DEFAULT 0,
  uniq_term_msisdn   INT NOT NULL DEFAULT 0
);

CREATE INDEX cs_summary_daily_date_cell_id
ON cs_summary_daily (record_date, cell_id);

CREATE TABLE cs_summary_hourly (
  record_date        TIMESTAMP NOT NULL,
  cell_id            TEXT NOT NULL,
  orig_calls         INT NOT NULL DEFAULT 0,
  term_calls         INT NOT NULL DEFAULT 0,
  orig_calls_bmobile INT NOT NULL DEFAULT 0,
  term_calls_bmobile INT NOT NULL DEFAULT 0,
  orig_calls_dur     INT NOT NULL DEFAULT 0,
  term_calls_dur     INT NOT NULL DEFAULT 0,
  orig_sms           INT NOT NULL DEFAULT 0,
  term_sms           INT NOT NULL DEFAULT 0,
  uniq_msisdn        INT NOT NULL DEFAULT 0,
  uniq_orig_msisdn   INT NOT NULL DEFAULT 0,
  uniq_term_msisdn   INT NOT NULL DEFAULT 0
);

CREATE INDEX cs_summary_hourly_date_cell_id
ON cs_summary_hourly (record_date, cell_id);

CREATE TABLE cs_summary_monthly (
  record_date      DATE NOT NULL,
  cell_id          TEXT NOT NULL,
  uniq_msisdn      INT NOT NULL DEFAULT 0,
  uniq_orig_msisdn INT NOT NULL DEFAULT 0,
  uniq_term_msisdn INT NOT NULL DEFAULT 0
);

CREATE INDEX cs_summary_monthly_date_cell_id
ON cs_summary_monthly (record_date, cell_id);


CREATE TABLE ps_summary_hourly (
  record_date   TIMESTAMP NOT NULL,
  cell_id       TEXT NOT NULL,
  uniq_msisdn   INT NOT NULL DEFAULT 0,
  data_uplink   INT8 NOT NULL DEFAULT 0,
  data_downlink INT8 NOT NULL DEFAULT 0
);

CREATE INDEX ps_summary_hourly_date_cell_id
ON ps_summary_hourly (record_date, cell_id);


CREATE TABLE ps_summary_daily (
  record_date   DATE NOT NULL,
  cell_id       TEXT NOT NULL,
  uniq_msisdn   INT NOT NULL DEFAULT 0
);

CREATE INDEX ps_summary_daily_date_cell_id
ON ps_summary_daily (record_date, cell_id);


CREATE TABLE ps_summary_monthly (
  record_date DATE NOT NULL,
  cell_id     TEXT NOT NULL,
  uniq_msisdn INT NOT NULL DEFAULT 0
);

CREATE INDEX ps_summary_monthly_date_cell_id
ON ps_summary_monthly (record_date, cell_id);

CREATE TABLE gsm_term_cause_daily (
  record_date DATE NOT NULL,
  cell_id     TEXT NOT NULL,
  term_cause  INT NOT NULL,
  count       INT8 NOT NULL
);

CREATE INDEX gsm_term_cause_daily_date_cell_id
ON gsm_term_cause_daily (record_date, cell_id);


CREATE TABLE cell_site (
  cell_id  TEXT PRIMARY KEY,
  loc_descr TEXT NOT NULL
);

COMMIT;
