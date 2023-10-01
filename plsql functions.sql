CREATE OR REPLACE FUNCTION tax_cal(fees number) RETURN number IS
begin
return (fees*18/100);
end;

select E_name, e_no, tax_cal(e_fees) as fees_gst from event_details;

