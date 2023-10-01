PROJECT PL/SQL PROCEDURE INCLUDING CURSOR



CREATE OR REPLACE PROCEDURE format_associate_sponcer(format_name1 IN OUT varchar2, format_name2 IN OUT varchar2) IS
begin
format_name1 := SUBSTR(format_name1, 1, 3) || SUBSTR(format_name2, 5, 3);
end;

declare
leter1 varchar(20);
leter2 varchar(20);
cursor cure is select c_name, sponcer from club;
begin
open cure;
loop
fetch cure into leter1, leter2;
format_associate_sponcer(leter1, leter2);
dbms_output.put_line(leter1);
exit when cure%NotFound;
end loop;
close cure;
end;




