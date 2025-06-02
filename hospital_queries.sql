create database practice;
use practice;
#show tables from database
show tables from practice;

select * from hospital;

#Count total number of patients
select count(patient_id)as total_patient
from hospital;

#Get patients older than 60
select * from hospital
where age>60;

#Find all patients treated by 'dr.vivek rao'
select * from hospital
where doctor_name='Dr.VivekRao';

#Find patients admitted in May 2025
select * from hospital
where month(admission_date)=5 and year(admission_date)=2025;

#Create a view named male_doctor that shows the doctor name and department from the hospital table where the gender is male.
create view male_doctor as
select doctor_name,department
from hospital
where gender='male';


  #Display patient name and department where name starts with 'R' and department is Cardiology.
  select patient_name,department
  from hospital
  where patient_name like 'r%' and  department='cardiology';
  

 
 # display disease, patient name, and doctor name from the hospital table for all patients who are suffering from asthma.
select disease,patient_name,doctor_name
from hospital
where disease='asthma';

#Gender wise patient count
select count(patient_id) ,gender
from hospital
group by gender;

#display the average age of patients grouped by gender.
  select avg(age),gender
  from hospital
  group by gender;
