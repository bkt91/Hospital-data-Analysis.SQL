-- creating database
create database projects;

--creating table 
create table hospitals
(
  hospital_name varchar(50) not null,
  location  varchar(50),
  department varchar(50),
  doctors_count int,
  patients_count int,
  admission_date date,
  discharge_date date,
  medical_expences numeric(10,2)
);

-- adding data into the table
copy hospitals(hospital_name, location, department, doctors_count, patients_Count, admission_date, discharge_date, medical_expences)
from 'D:\Hospital_Data.csv'
csv header;

select * from hospitals;

--1. total no of petients
select count(patients_count) from hospitals;

--2. average no of doctors per hospitals
select hospital_name, avg(doctors_count) as avg_doctors from hospitals
group by hospital_name;

--3. top 3 departments with highest no of patients
select hospital_name, department, sum(patients_count) as highest_patients from hospitals 
group by hospital_name, department
order by highest_patients desc limit 3;

--4. hospital with the maximum medical expenses
select hospital_name, sum(medical_expences) as max_medical_expences from hospitals
group by hospital_name
order by max_medical_expences limit 1;

--5. daily average medical expences
select hospital_name, round(avg(medical_expences/(discharge_date-admission_date)),2) as daily_med_expences 
from hospitals
group by hospital_name;

--6. patient having longest hospital stay
select hospital_name, location, department, max(discharge_date-admission_date) as longest_stay from hospitals
group by hospital_name, location, department
order by longest_stay desc limit 1;

--7. total patients treated per city
select location as city, sum(patients_count) as total_patients_treated from hospitals
group by city
order by total_patients_treated desc;

--8. average length of stay per department
select department, round(avg(discharge_date-admission_date),2) as avg_stay_days from hospitals
group by department
order by avg_stay_days desc;

--9. department with lowest no of patients
select department, min(patients_count) as lowest_patients from hospitals
group by department
order by lowest_patients desc limit 1;

--10. total medical expense for each month
select to_char(admission_date, 'month') as billing_month, sum(medical_expences) as total_expenses from hospitals
group by billing_month
order by total_expenses desc;


