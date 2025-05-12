prompt PL/SQL Developer Export User Objects for user KHATIA@ORCL
prompt Created by xatia on Tuesday, May 13, 2025
set define off
spool cat-backup-pack.log

prompt
prompt Creating view COUNT_ACTIVE_BEFORE_MONTH
prompt =======================================
prompt
CREATE OR REPLACE FORCE VIEW KHATIA.COUNT_ACTIVE_BEFORE_MONTH AS
SELECT COUNT(DISTINCT private_number) AS cnt
  FROM tmpinfo
 WHERE start_date < TRUNC(ADD_MONTHS(SYSDATE, -1), 'MM')
   and end_date is null;


prompt Done
spool off
set define on
