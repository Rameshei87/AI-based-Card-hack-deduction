BEGIN;

-- ps_asn1

INSERT INTO schema_version (name, version) VALUES
  ('ps_asn1', '1');

CREATE SEQUENCE ps_asn1_id_seq;

CREATE TABLE ps_sgsnpdprecord (
  id                      INT PRIMARY KEY DEFAULT nextval('ps_asn1_id_seq'),
  file_id                 INT REFERENCES file (id) NOT NULL,
  recordType              TEXT,
  networkInitiation       BOOL, -- BOOL
  servedIMSI              TEXT,
  servedIMEI              TEXT,
  sgsnAddress             INET,
  msNetworkCapability     TEXT,
  routingArea             TEXT,
  locationAreaCode        TEXT,
  cellIdentifier          TEXT,
  chargingID              BIGINT,
  ggsnAddressUsed         INET,
  accessPointNameNI       TEXT,
  pdpType                 TEXT,
  servedPDPAddressIP      INET,
  servedPDPAddressETSI    TEXT,
  listOfTrafficVolumes    JSONB,
  recordOpeningTime       TIMESTAMP WITH TIME ZONE,
  duration                INT,
  sgsnChange              BOOL, -- BOOL
  causeForRecClosing      TEXT,
  diag_gsm0408cause       INT,
  diag_other              JSONB,
  recordSequenceNumber    INT,
  nodeID                  TEXT,
  recordExtensions        JSONB,
  localSequenceNumber     BIGINT,
  apnSelectionMode        TEXT,
  accessPointNameOI       TEXT,
  servedMSISDN            TEXT,
  chargingCharacteristics TEXT,
  systemType              TEXT,
  cAMELInformationPDP     JSONB,
  rNCUnsentDownlinkVolume INT,
  chChSelectionMode       TEXT,
  dynamicAddressFlag      BOOL -- BOOL
);

CREATE TABLE ps_ggsnpdprecord (
  id                      INT PRIMARY KEY DEFAULT nextval('ps_asn1_id_seq'),
  file_id                 INT REFERENCES file (id) NOT NULL,
  recordType              TEXT,
  networkInitiation       BOOL, -- BOOL
  servedIMSI              TEXT,
  ggsnAddress             INET,
  chargingID              BIGINT,
  sgsnAddress             INET[],
  accessPointNameNI       TEXT,
  pdpType                 TEXT,
  servedPDPAddressIP      INET,
  servedPDPAddressETSI    TEXT,
  dynamicAddressFlag      BOOL, -- BOOL
  listOfTrafficVolumes    JSONB,
  recordOpeningTime       TIMESTAMP WITH TIME ZONE,
  duration                INT,
  causeForRecClosing      TEXT,
  diag_gsm0408cause       INT,
  diag_other              JSONB,
  recordSequenceNumber    INT,
  nodeID                  TEXT,
  recordExtensions        JSONB,
  localSequenceNumber     BIGINT,
  apnSelectionMode        TEXT,
  servedMSISDN            TEXT,
  chargingCharacteristics TEXT,
  chChSelectionMode       TEXT,
  sgsnPLMNIdentifier      TEXT
);

CREATE TABLE ps_sgsnmmrecord (
  id                      INT PRIMARY KEY DEFAULT nextval('ps_asn1_id_seq'),
  file_id                 INT REFERENCES file (id) NOT NULL,
  recordType              TEXT,
  servedIMSI              TEXT,
  servedIMEI              TEXT,
  sgsnAddress             INET,
  msgNetworkCapability    TEXT,
  routingArea             TEXT,
  locationAreaCode        TEXT,
  cellIdentifier          TEXT,
  changeLocation          JSONB,
  recordOpeningTime       TIMESTAMP WITH TIME ZONE,
  duration                INT,
  sgsnChange              BOOL, -- BOOL
  causeForRecClosing      TEXT,
  diag_gsm0408cause       INT,
  diag_other              JSONB,
  recordSequenceNumber    INT,
  nodeID                  TEXT,
  recordExtensions        JSONB,
  localSequenceNumber     BIGINT,
  servedMSISDN            TEXT,
  chargingCharacteristics TEXT,
  cAMELInformationMM      JSONB,
  systemType              TEXT,
  chChSelectionMode       TEXT
);

CREATE TABLE ps_sgsnsmorecord (
  id                      INT PRIMARY KEY DEFAULT nextval('ps_asn1_id_seq'),
  file_id                 INT REFERENCES file (id) NOT NULL,
  recordType              TEXT,
  servedIMSI              TEXT,
  servedIMEI              TEXT,
  servedMSISDN            TEXT,
  msNetworkCapability     TEXT,
  serviceCentre           TEXT,
  recordingEntity         TEXT,
  locationArea            TEXT,
  routingArea             TEXT,
  cellIdentifier          TEXT,
  messageReference        TEXT,
  eventTimeStamp          TIMESTAMP WITH TIME ZONE,
  smsResult               JSONB,
  recordExtensions        JSONB,
  nodeID                  TEXT,
  localSequenceNumber     BIGINT,
  chargingCharacteristics TEXT,
  systemType              TEXT,
  destinationNumber       TEXT,
  cAMELInformationSMS     JSONB,
  chChSelectionMode       BOOL -- BOOL
);

CREATE TABLE ps_sgsnsmtrecord (
  id                      INT PRIMARY KEY DEFAULT nextval('ps_asn1_id_seq'),
  file_id                 INT REFERENCES file (id) NOT NULL,
  recordType              TEXT,
  servedIMSI              TEXT,
  servedIMEI              TEXT,
  servedMSISDN            TEXT,
  msNetworkCapability     TEXT,
  serviceCentre           TEXT,
  recordingEntity         TEXT,
  locationArea            TEXT,
  routingArea             TEXT,
  cellIdentifier          TEXT,
  eventTimeStamp          TIMESTAMP WITH TIME ZONE,
  smsResult               JSONB,
  recordExtensions        JSONB,
  nodeID                  TEXT,
  localSequenceNumber     BIGINT,
  chargingCharacteristics TEXT,
  systemType              TEXT,
  chChSelectionMode       BOOL, -- BOOL
  cAMELInformationSMS     JSONB
);

CREATE TABLE ps_sgsnlctrecord (
  id                      INT PRIMARY KEY DEFAULT nextval('ps_asn1_id_seq'),
  file_id                 INT REFERENCES file (id) NOT NULL,
  recordType              TEXT,
  recordingEntity         TEXT,
  lcsClientType           TEXT,
  lcsClientIdentity       JSONB,
  servedIMSI              TEXT,
  servedMSISDN            TEXT,
  sgsnAddress             INET,
  locationType            JSONB,
  lcsQos                  TEXT,
  lcsPriority             TEXT,
  mlcNumber               TEXT,
  eventTimeStamp          TIMESTAMP WITH TIME ZONE,
  measurementDuration     INT,
  notificationToMSUser    TEXT,
  locationAreaCode        TEXT,
  cellIdentifier          TEXT,
  routingArea             TEXT,
  locationEstimate        TEXT,
  lcsCause                TEXT,
  diag_gsm0408cause       INT,
  diag_other              JSONB,
  nodeID                  TEXT,
  localSequenceNumber     BIGINT,
  chargingCharacteristics TEXT,
  chChSelectionMode       BOOL, -- BOOL
  systemType              TEXT,
  recordExtensions        JSONB,
  causeForRecClosing      TEXT
);

CREATE TABLE ps_sgsnlcorecord (
  id                      INT PRIMARY KEY DEFAULT nextval('ps_asn1_id_seq'),
  file_id                 INT REFERENCES file (id) NOT NULL,
  recordType              TEXT,
  recordingEntity         TEXT,
  lcsClientType           TEXT,
  lcsClientIdentity       JSONB,
  servedIMSI              TEXT,
  servedMSISDN            TEXT,
  sgsnAddress             INET,
  locationMethod          TEXT,
  lcsQos                  TEXT,
  lcsPriority             TEXT,
  mlcNumber               TEXT,
  eventTimeStamp          TIMESTAMP WITH TIME ZONE,
  measurementDuration     INT,
  locationAreaCode        TEXT,
  cellIdentifier          TEXT,
  routingArea             TEXT,
  locationEstimate        TEXT,
  lcsCause                TEXT,
  diag_gsm0408cause       INT,
  diag_other              JSONB,
  nodeID                  TEXT,
  localSequenceNumber     BIGINT,
  chargingCharacteristics TEXT,
  chChSelectionMode       BOOL, -- BOOL
  systemType              TEXT,
  recordExtensions        JSONB,
  causeForRecClosing      TEXT
);

CREATE TABLE ps_sgsnlcnrecord (
  id                      INT PRIMARY KEY DEFAULT nextval('ps_asn1_id_seq'),
  file_id                 INT REFERENCES file (id) NOT NULL,
  recordType              TEXT,
  recordingEntity         TEXT,
  lcsClientType           TEXT,
  lcsClientIdentity       JSONB,
  servedIMSI              TEXT,
  servedMSISDN            TEXT,
  sgsnAddress             INET,
  servedIMEI              TEXT,
  lcsQos                  TEXT,
  lcsPriority             TEXT,
  mlcNumber               TEXT,
  eventTimeStamp          TIMESTAMP WITH TIME ZONE,
  measurementDuration     INT,
  locationAreaCode        TEXT,
  cellIdentifier          TEXT,
  routingArea             TEXT,
  locationEstimate        TEXT,
  lcsCause                TEXT,
  diag_gsm0408cause       INT,
  diag_other              JSONB,
  nodeID                  TEXT,
  localSequenceNumber     BIGINT,
  chargingCharacteristics TEXT,
  chChSelectionMode       BOOL, -- BOOL
  systemType              TEXT,
  recordExtensions        JSONB,
  causeForRecClosing      TEXT
);

COMMIT;
