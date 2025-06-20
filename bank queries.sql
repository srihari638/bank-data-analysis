use bank_loan;
select * from bank_data;


select count(id) as total_loan_application from bank_data;
select count(id) as MTM_loan_application from bank_data
where month(issue_date)=12
select count(id) as PMTM_loan_application from bank_data
where month(issue_date)=11


select avg(dti)*100 from bank_data;

select 
     (count(case when loan_status='Fully Paid'or loan_status='Current' then id
	 end)*100.0)/count(id) as good_loan_percentage 
from bank_data;
select loan_status from bank_data;
select * from bank_data;

SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data;


select 
 (count(case when loan_status='Charged Off' then id
 end) * 100.0)/count(id) as bad_loan_percentage
 from bank_data;

 select distinct(loan_status),
count(id) as total_applicateion,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as total_recived
from bank_data;


select loan_status from