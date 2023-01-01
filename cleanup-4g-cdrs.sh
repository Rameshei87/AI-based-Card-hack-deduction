#!/bin/sh

psql -t -c "select tablename from pg_tables where tablename like 'ps_sgwrecord_month%' order by tablename desc offset 3;" | grep -o "ps_.gwrecord_month_[0-9]*_[0-9]*" | sed -r 's/^(.*)$/drop table "\1";/' | psql -1
psql -t -c "select tablename from pg_tables where tablename like 'ps_pgwrecord_month%' order by tablename desc offset 3;" | grep -o "ps_.gwrecord_month_[0-9]*_[0-9]*" | sed -r 's/^(.*)$/drop table "\1";/' | psql -1
