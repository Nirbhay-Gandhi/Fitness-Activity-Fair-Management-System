declare
v_pid participent.p_id%type;
v_pname participent.p_name%type;
v_pno participent.p_no%type;
v_ename event_details.e_name%type;
cursor participent_details is
select participent.p_id, p_name, p_no, e_name from participent, event_details where participent.p_id=event_details.p_id;
begin
dbms_output.put_line(' -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_');
open participent_details;
loop
fetch participent_details into v_pid, v_pname, v_pno, v_ename;
dbms_output.put_line('I.D: '||v_pid||'   Name: '||v_pname||'   Contact No: '||v_pno||'   Registered Event: '||v_ename);
dbms_output.put_line(' -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_');
exit when participent_details%NotFound;
end loop;
close participent_details;
end;



create table participent(p_id varchar(4) primary key, p_name varchar(30), p_no number(10));
insert into participent values('P101', 'Punam',9876565656 );
insert into participent values('P102', 'Kunal', 9502130202);
insert into participent values('P106', 'Sanjay', 9090312010);
insert into participent values('P109', 'Rakesh',7878956450 );
insert into participent values('P207', 'Nitin', 765203120


create table event_details(e_name varchar(20), p_id varchar(4), foreign key(p_id) references participent(p_id));
insert into event_details values('Blast Badminton','P106');
insert into event_details values('Brain fight','P207');
insert into event_details values('Cute cuples','P102');
insert into event_details values('Swimming','P101');
insert into event_details values('D.J night','P109');


















