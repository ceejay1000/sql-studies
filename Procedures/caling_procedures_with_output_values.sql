-- User or session variables. These variables are no longer available when a user disconnects from the database
set @invoices_count = 0;
set @invoices_total = 0;
call invoicing.get_unpaid_invoices(1, @invoices_count, @invoices_total);
select @invoices_count, @invoices_total;
