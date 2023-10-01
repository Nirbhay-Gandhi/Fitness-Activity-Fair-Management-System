create table trans_history(
trans_id number(16),
trans_date date,
p_id varchar(4),
foreign key(p_id) references participent(p_id));

insert into trans_history values(7900111122220303, '19-Aug-20', 'P101');
insert into trans_history values(5860000023238787, '03-Aug-20', 'P102');
insert into trans_history values(5860989870703232, '10-Aug-20', 'P106');
insert into trans_history values(7900111132027988, '12-Aug-20' ,'P109');
insert into trans_history values(5860666622220303, '15-Aug-20', 'P207');   


CREATE OR REPLACE TRIGGER total_update_check
BEFORE UPDATE OF total ON trans_history
FOR EACH ROW 
BEGIN
if :NEW.total < :OLD.total then
raise_application_error(-20125, ':::::::Total should be greater than the previous:::::::');
end if;
end;

SQL> update trans_history set total=4001 where p_id='P102';






CREATE OR REPLACE TRIGGER trans_date_check
BEFORE INSERT OR UPDATE OF trans_date ON trans_history
FOR EACH ROW
BEGIN
if ( :NEW.trans_date NOT BETWEEN '01-Aug-20' AND '20-Aug-20' ) then
raise_application_error(-20125, ':::::::Event date should between 1st to 20th August:::::::');
end if;
end;

SQL> update trans_history set trans_date='23-Aug-20' where p_id='P102';







CREATE OR REPLACE TRIGGER evnt_date_check
BEFORE INSERT OR UPDATE OF e_date ON event_details
FOR EACH ROW
BEGIN
if ( :NEW.e_date NOT BETWEEN '01-Aug-20' AND '20-Aug-20' ) then
raise_application_error(-20125, ':::::::Event date should between 1st to 20th August:::::::');
end if;
end;

SQL> update event_details set e_date='23-Aug-20' where p_id='P102';






