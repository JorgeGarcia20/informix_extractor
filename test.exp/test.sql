{ DATABASE test  delimiter | }

grant dba to "alber";











{ TABLE table1 row size = 36 number of columns = 4 index size = 0 }

{ unload file name = table00100.unl number of rows = 5 }

create table table1 
  (
    id integer,
    column1 varchar(20),
    column2 date,
    column3 decimal(12,4)
  );

revoke all on table1 from "public";

{ TABLE table2 row size = 36 number of columns = 4 index size = 0 }

{ unload file name = table00101.unl number of rows = 5 }

create table table2 
  (
    id integer,
    column1 varchar(20),
    column2 date,
    column3 decimal(12,4)
  );

revoke all on table2 from "public";

{ TABLE table3 row size = 36 number of columns = 4 index size = 0 }

{ unload file name = table00102.unl number of rows = 5 }

create table table3 
  (
    id integer,
    column1 varchar(20),
    column2 date,
    column3 decimal(12,4)
  );

revoke all on table3 from "public";

{ TABLE table4 row size = 36 number of columns = 4 index size = 0 }

{ unload file name = table00103.unl number of rows = 5 }

create table table4 
  (
    id integer,
    column1 varchar(20),
    column2 date,
    column3 decimal(12,4)
  );

revoke all on table4 from "public";




grant select on table1 to "public";
grant update on table1 to "public";
grant insert on table1 to "public";
grant delete on table1 to "public";
grant index on table1 to "public";
grant select on table2 to "public";
grant update on table2 to "public";
grant insert on table2 to "public";
grant delete on table2 to "public";
grant index on table2 to "public";
grant select on table3 to "public";
grant update on table3 to "public";
grant insert on table3 to "public";
grant delete on table3 to "public";
grant index on table3 to "public";
grant select on table4 to "public";
grant update on table4 to "public";
grant insert on table4 to "public";
grant delete on table4 to "public";
grant index on table4 to "public";
















revoke usage on language SPL from public ;

grant usage on language SPL to public ;












update statistics medium for table sysaggregates (
     owner) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysams (
     am_owner) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysattrtypes (
     seqno) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysblobs (
     colno) 
     resolution   2.00000   0.95000 ;
update statistics medium for table syscasts (
     argument_xid, result_xid) 
     resolution   2.00000   0.95000 ;
update statistics medium for table syscolauth (
     colno, grantee, grantor) 
     resolution   2.00000   0.95000 ;
update statistics medium for table syscolumns (
     colno) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysdefaults (
     class, colno) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysdistrib (
     colno, seqno) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysindices (
     owner) 
     resolution   2.00000   0.95000 ;
update statistics medium for table syslangauth (
     grantee, grantor) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysopclasses (
     owner) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysprocauth (
     grantee, grantor) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysprocbody (
     datakey, seqno) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysproccolumns (
     paramid) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysprocedures (
     isproc, numargs, owner) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysprocplan (
     datakey, planid, seqno) 
     resolution   2.00000   0.95000 ;
update statistics medium for table systabauth (
     grantee, grantor) 
     resolution   2.00000   0.95000 ;
update statistics medium for table systables (
     owner) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysviews (
     seqno) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysxtddesc (
     seqno) 
     resolution   2.00000   0.95000 ;
update statistics medium for table sysxtdtypes (
     owner, source) 
     resolution   2.00000   0.95000 ;

 



