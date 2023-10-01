
declare
type bonenza is varray(20) of varchar(4);
lucky_id bonenza;
x number(2) := &sponcer_key;
i number(2);
j number(10);

begin
lucky_id := bonenza('P001','P005','P008','P011','P016','P018','P020','P023','P025','P026','P031','P035','P045','P051','P058','P059','P062','P063','P068','P113' );
i := 1;
j := 1;
dbms_output.put_line(' . ');
dbms_output.put_line(' who is the lucky '||x||' ?');
dbms_output.put_line(' who is the lucky '||x||' ?');
dbms_output.put_line(' who is the lucky '||x||' ?');
dbms_output.put_line('Calculating................................................................');
dbms_output.put_line('.......................Calculating..........................................');
dbms_output.put_line('...............................................Calculating...................');
dbms_output.put_line('..................................................................Calculating');

for j in 1..200000 loop
dbms_output.put_line('   ');
end loop;

loop
dbms_output.put_line('..........lucky draw..........'||lucky_id(i));
i := i+1;
exit when i>20;
end loop;
i :=1;
loop
dbms_output.put_line('..........lucky draw..........'||lucky_id(i));
i := i+1;
exit when i>20;
end loop;
dbms_output.put_line(' . ');
dbms_output.put_line(' . ');
dbms_output.put_line(' . ');
dbms_output.put_line('lucky draw completed.');
dbms_output.put_line('  !!!The Winner is!!!  '||lucky_id(x));

end;