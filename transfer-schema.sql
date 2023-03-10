BEGIN;
-- Transfer
CREATE TABLE cbs_cdr_transfer (
id                    bigserial primary key,
file_id    int REFERENCES file (id) NOT NULL,
transfer_log_id    bigint NOT NULL   DEFAULT 0,
pay_type    varchar(1),
acct_id    bigint NOT NULL,
cust_id    bigint,
sub_id    bigint,
pri_identity    varchar(64),
batch_no    bigint NOT NULL   DEFAULT 0,
channel_id    varchar(8),
reason_code    varchar(16),
result_code    bigint NOT NULL,
error_type    varchar(32) NOT NULL,
request_acct_balance_id    bigint NOT NULL,
dest_acct_id    bigint NOT NULL,
dest_acct_balance_id    bigint NOT NULL,
transfer_type    bigint NOT NULL,
transfer_amt    bigint NOT NULL   DEFAULT 0,
transfer_date    TIMESTAMP WITHOUT TIME ZONE NOT NULL,
transfer_trans_id    bigint NOT NULL   DEFAULT 0,
ext_trans_type    varchar(32),
ext_trans_id    varchar(32),
access_method    bigint NOT NULL,
diameter_sessionid    varchar(128),
handling_charge    bigint NOT NULL,
reversal_trans_id    bigint NOT NULL,
reversal_reason_code    varchar(16),
reversal_date    TIMESTAMP WITHOUT TIME ZONE,
ext_ref_id    varchar(64),
status    varchar(1) NOT NULL,
entry_date    TIMESTAMP WITHOUT TIME ZONE NOT NULL,
remark    varchar(128),
oper_id    bigint NOT NULL   DEFAULT 0,
dept_id    bigint NOT NULL   DEFAULT 0,
be_id    bigint NOT NULL   DEFAULT 0,
be_code    varchar(256),
region_id    bigint NOT NULL   DEFAULT 0,
region_code    varchar(256),
acct_id_0    bigint,
acct_balance_id_0    bigint,
balance_type_0    bigint,
cur_balance_0    bigint,
chg_balance_0    bigint,
pre_apply_time_0    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_0    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_0    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_0    bigint,
oper_type_0    bigint,
acct_id_1    bigint,
acct_balance_id_1    bigint,
balance_type_1    bigint,
cur_balance_1    bigint,
chg_balance_1    bigint,
pre_apply_time_1    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_1    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_1    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_1    bigint,
oper_type_1    bigint,
acct_id_2    bigint,
acct_balance_id_2    bigint,
balance_type_2    bigint,
cur_balance_2    bigint,
chg_balance_2    bigint,
pre_apply_time_2    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_2    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_2    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_2    bigint,
oper_type_2    bigint,
acct_id_3    bigint,
acct_balance_id_3    bigint,
balance_type_3    bigint,
cur_balance_3    bigint,
chg_balance_3    bigint,
pre_apply_time_3    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_3    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_3    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_3    bigint,
oper_type_3    bigint,
acct_id_4    bigint,
acct_balance_id_4    bigint,
balance_type_4    bigint,
cur_balance_4    bigint,
chg_balance_4    bigint,
pre_apply_time_4    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_4    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_4    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_4    bigint,
oper_type_4    bigint,
acct_id_5    bigint,
acct_balance_id_5    bigint,
balance_type_5    bigint,
cur_balance_5    bigint,
chg_balance_5    bigint,
pre_apply_time_5    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_5    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_5    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_5    bigint,
oper_type_5    bigint,
acct_id_6    bigint,
acct_balance_id_6    bigint,
balance_type_6    bigint,
cur_balance_6    bigint,
chg_balance_6    bigint,
pre_apply_time_6    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_6    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_6    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_6    bigint,
oper_type_6    bigint,
acct_id_7    bigint,
acct_balance_id_7    bigint,
balance_type_7    bigint,
cur_balance_7    bigint,
chg_balance_7    bigint,
pre_apply_time_7    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_7    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_7    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_7    bigint,
oper_type_7    bigint,
acct_id_8    bigint,
acct_balance_id_8    bigint,
balance_type_8    bigint,
cur_balance_8    bigint,
chg_balance_8    bigint,
pre_apply_time_8    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_8    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_8    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_8    bigint,
oper_type_8    bigint,
acct_id_9    bigint,
acct_balance_id_9    bigint,
balance_type_9    bigint,
cur_balance_9    bigint,
chg_balance_9    bigint,
pre_apply_time_9    TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_9    TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_9    TIMESTAMP WITHOUT TIME ZONE,
currencye_id_9    bigint,
oper_type_9    bigint,
fu_own_type_0    varchar(1),
fu_own_id_0    bigint,
free_unit_id_0     bigint,
free_unit_type_0     bigint,
fu_cur_amount_0     bigint,
fu_chg_amount_0     bigint,
fu_pre_apply_time_0    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_0    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_0    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_0     bigint,
fu_oper_type_0    bigint,
fu_own_type_1    varchar(1),
fu_own_id_1    bigint,
free_unit_id_1     bigint,
free_unit_type_1     bigint,
fu_cur_amount_1     bigint,
fu_chg_amount_1     bigint,
fu_pre_apply_time_1    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_1    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_1    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_1     bigint,
fu_oper_type_1    bigint,
fu_own_type_2    varchar(1),
fu_own_id_2    bigint,
free_unit_id_2     bigint,
free_unit_type_2     bigint,
fu_cur_amount_2     bigint,
fu_chg_amount_2     bigint,
fu_pre_apply_time_2    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_2    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_2    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_2     bigint,
fu_oper_type_2    bigint,
fu_own_type_3    varchar(1),
fu_own_id_3    bigint,
free_unit_id_3     bigint,
free_unit_type_3     bigint,
fu_cur_amount_3     bigint,
fu_chg_amount_3     bigint,
fu_pre_apply_time_3    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_3    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_3    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_3     bigint,
fu_oper_type_3    bigint,
fu_own_type_4    varchar(1),
fu_own_id_4    bigint,
free_unit_id_4     bigint,
free_unit_type_4     bigint,
fu_cur_amount_4     bigint,
fu_chg_amount_4     bigint,
fu_pre_apply_time_4    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_4    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_4    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_4     bigint,
fu_oper_type_4    bigint,
fu_own_type_5    varchar(1),
fu_own_id_5    bigint,
free_unit_id_5     bigint,
free_unit_type_5     bigint,
fu_cur_amount_5     bigint,
fu_chg_amount_5     bigint,
fu_pre_apply_time_5    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_5    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_5    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_5     bigint,
fu_oper_type_5    bigint,
fu_own_type_6    varchar(1),
fu_own_id_6    bigint,
free_unit_id_6     bigint,
free_unit_type_6     bigint,
fu_cur_amount_6     bigint,
fu_chg_amount_6     bigint,
fu_pre_apply_time_6    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_6    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_6    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_6     bigint,
fu_oper_type_6    bigint,
fu_own_type_7    varchar(1),
fu_own_id_7    bigint,
free_unit_id_7     bigint,
free_unit_type_7     bigint,
fu_cur_amount_7     bigint,
fu_chg_amount_7     bigint,
fu_pre_apply_time_7    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_7    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_7    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_7     bigint,
fu_oper_type_7    bigint,
fu_own_type_8    varchar(1),
fu_own_id_8    bigint,
free_unit_id_8     bigint,
free_unit_type_8     bigint,
fu_cur_amount_8     bigint,
fu_chg_amount_8     bigint,
fu_pre_apply_time_8    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_8    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_8    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_8     bigint,
fu_oper_type_8    bigint,
fu_own_type_9    varchar(1),
fu_own_id_9    bigint,
free_unit_id_9     bigint,
free_unit_type_9     bigint,
fu_cur_amount_9     bigint,
fu_chg_amount_9     bigint,
fu_pre_apply_time_9    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_9    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_9    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_9     bigint,
fu_oper_type_9    bigint,
acct_id_10     bigint,
acct_balance_id_10     bigint,
balance_type_10     bigint,
bonus_amount_10     bigint,
current_balance_10    bigint,
pre_apply_time_10     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_10     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_10     TIMESTAMP WITHOUT TIME ZONE,
currency_id_10    bigint,
oper_type_10    bigint,
acct_id_11     bigint,
acct_balance_id_11     bigint,
balance_type_11     bigint,
bonus_amount_11     bigint,
current_balance_11    bigint,
pre_apply_time_11     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_11     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_11     TIMESTAMP WITHOUT TIME ZONE,
currency_id_11    bigint,
oper_type_11    bigint,
acct_id_12     bigint,
acct_balance_id_12     bigint,
balance_type_12     bigint,
bonus_amount_12     bigint,
current_balance_12    bigint,
pre_apply_time_12     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_12     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_12     TIMESTAMP WITHOUT TIME ZONE,
currency_id_12    bigint,
oper_type_12    bigint,
acct_id_13     bigint,
acct_balance_id_13     bigint,
balance_type_13     bigint,
bonus_amount_13     bigint,
current_balance_13    bigint,
pre_apply_time_13     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_13     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_13     TIMESTAMP WITHOUT TIME ZONE,
currency_id_13    bigint,
oper_type_13    bigint,
acct_id_14     bigint,
acct_balance_id_14     bigint,
balance_type_14     bigint,
bonus_amount_14     bigint,
current_balance_14    bigint,
pre_apply_time_14     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_14     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_14     TIMESTAMP WITHOUT TIME ZONE,
currency_id_14    bigint,
oper_type_14    bigint,
acct_id_15     bigint,
acct_balance_id_15     bigint,
balance_type_15     bigint,
bonus_amount_15     bigint,
current_balance_15    bigint,
pre_apply_time_15     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_15     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_15     TIMESTAMP WITHOUT TIME ZONE,
currency_id_15    bigint,
oper_type_15    bigint,
acct_id_16     bigint,
acct_balance_id_16     bigint,
balance_type_16     bigint,
bonus_amount_16     bigint,
current_balance_16    bigint,
pre_apply_time_16     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_16     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_16     TIMESTAMP WITHOUT TIME ZONE,
currency_id_16    bigint,
oper_type_16    bigint,
acct_id_17     bigint,
acct_balance_id_17     bigint,
balance_type_17     bigint,
bonus_amount_17     bigint,
current_balance_17    bigint,
pre_apply_time_17     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_17     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_17     TIMESTAMP WITHOUT TIME ZONE,
currency_id_17    bigint,
oper_type_17    bigint,
acct_id_18     bigint,
acct_balance_id_18     bigint,
balance_type_18     bigint,
bonus_amount_18     bigint,
current_balance_18    bigint,
pre_apply_time_18     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_18     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_18     TIMESTAMP WITHOUT TIME ZONE,
currency_id_18    bigint,
oper_type_18    bigint,
acct_id_19     bigint,
acct_balance_id_19     bigint,
balance_type_19     bigint,
bonus_amount_19     bigint,
current_balance_19    bigint,
pre_apply_time_19     TIMESTAMP WITHOUT TIME ZONE,
pre_expire_time_19     TIMESTAMP WITHOUT TIME ZONE,
cur_expire_time_19     TIMESTAMP WITHOUT TIME ZONE,
currency_id_19    bigint,
oper_type_19    bigint,
fu_own_type_10     varchar(1),
fu_own_id_10     bigint,
free_unit_type_10     bigint,
free_unit_id_10    bigint,
fu_bonus_amount_10    bigint,
fu_current_amount_10    bigint,
fu_pre_apply_time_10    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_10    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_10    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_10    bigint,
fu_oper_type_10    bigint,
fu_own_type_11     varchar(1),
fu_own_id_11     bigint,
free_unit_type_11     bigint,
free_unit_id_11    bigint,
fu_bonus_amount_11    bigint,
fu_current_amount_11    bigint,
fu_pre_apply_time_11    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_11    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_11    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_11    bigint,
fu_oper_type_11    bigint,
fu_own_type_12     varchar(1),
fu_own_id_12     bigint,
free_unit_type_12     bigint,
free_unit_id_12    bigint,
fu_bonus_amount_12    bigint,
fu_current_amount_12    bigint,
fu_pre_apply_time_12    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_12    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_12    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_12    bigint,
fu_oper_type_12    bigint,
fu_own_type_13     varchar(1),
fu_own_id_13     bigint,
free_unit_type_13     bigint,
free_unit_id_13    bigint,
fu_bonus_amount_13    bigint,
fu_current_amount_13    bigint,
fu_pre_apply_time_13    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_13    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_13    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_13    bigint,
fu_oper_type_13    bigint,
fu_own_type_14     varchar(1),
fu_own_id_14     bigint,
free_unit_type_14     bigint,
free_unit_id_14    bigint,
fu_bonus_amount_14    bigint,
fu_current_amount_14    bigint,
fu_pre_apply_time_14    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_14    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_14    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_14    bigint,
fu_oper_type_14    bigint,
fu_own_type_15     varchar(1),
fu_own_id_15     bigint,
free_unit_type_15     bigint,
free_unit_id_15    bigint,
fu_bonus_amount_15    bigint,
fu_current_amount_15    bigint,
fu_pre_apply_time_15    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_15    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_15    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_15    bigint,
fu_oper_type_15    bigint,
fu_own_type_16     varchar(1),
fu_own_id_16     bigint,
free_unit_type_16     bigint,
free_unit_id_16    bigint,
fu_bonus_amount_16    bigint,
fu_current_amount_16    bigint,
fu_pre_apply_time_16    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_16    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_16    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_16    bigint,
fu_oper_type_16    bigint,
fu_own_type_17     varchar(1),
fu_own_id_17     bigint,
free_unit_type_17     bigint,
free_unit_id_17    bigint,
fu_bonus_amount_17    bigint,
fu_current_amount_17    bigint,
fu_pre_apply_time_17    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_17    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_17    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_17    bigint,
fu_oper_type_17    bigint,
fu_own_type_18     varchar(1),
fu_own_id_18     bigint,
free_unit_type_18     bigint,
free_unit_id_18    bigint,
fu_bonus_amount_18    bigint,
fu_current_amount_18    bigint,
fu_pre_apply_time_18    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_18    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_18    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_18    bigint,
fu_oper_type_18    bigint,
fu_own_type_19     varchar(1),
fu_own_id_19     bigint,
free_unit_type_19     bigint,
free_unit_id_19    bigint,
fu_bonus_amount_19    bigint,
fu_current_amount_19    bigint,
fu_pre_apply_time_19    TIMESTAMP WITHOUT TIME ZONE,
fu_pre_expire_time_19    TIMESTAMP WITHOUT TIME ZONE,
fu_cur_expire_time_19    TIMESTAMP WITHOUT TIME ZONE,
fu_measure_id_19    bigint,
fu_oper_type_19    bigint,
brand_id    bigint,
main_offering_id    bigint,
pay_type_2    varchar(1),
is_test_number    varchar(1) DEFAULT 1,
start_time_of_bill_cycle    TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

COMMIT;
