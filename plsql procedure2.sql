CURSOR WITH PROCEDURE




create table event(e_name varchar(30), desk_id number(4), foreign key(desk_id) references venue(desk_id));

insert into event values('Blast Badminton', 1354);
insert into event values('Brain Fight', 4352);
insert into event values('Cute cuples', 2457);
insert into event values('Swimming', 1054);
insert into event values('D.J night', 2304);





CREATE OR REPLACE PROCEDURE avanue(e_name in out varchar, plot_name in out varchar) IS
begin
e_name :=  e_name||'/*/*/*/*/*\*\*\*\*\ '||plot_name;
end;

declare
v_ename varchar(500);
v_plotname varchar(500);
cursor newor is select e_name, plot_name from event, venue where event.desk_id=venue.desk_id;
begin
open newor;
loop
fetch newor into v_ename, v_plotname;
avanue(v_ename, v_plotname);
dbms_output.put_line(v_ename);
exit when newor%NotFound;
end loop;
close newor;
end;



