create database [Tableau Project]
select * from [dbo].[Depression+Student+Dataset]
--modify gender column
update [dbo].[Depression+Student+Dataset]
set gender = 'F' where gender = 'Female'

update [dbo].[Depression+Student+Dataset]
set gender = 'M' where gender = 'male' 

select * from [dbo].[Depression+Student+Dataset]

--add age group column
alter table [dbo].[Depression+Student+Dataset]
add  Age_group varchar(max)

update [dbo].[Depression+Student+Dataset]
set age_group = 
case when age between 18 and 24 then 'A1'
else case when age between 25 and 30 then 'A2'
else 'A3'
end end

select age_group , count(*) [count]
from [dbo].[Depression+Student+Dataset]
group by age_group 

select * from INFORMATION_SCHEMA.COLUMNS
where table_name like 'Depression+Student+Dataset'

select Academic_Pressure,count(*) from [dbo].[Depression+Student+Dataset]
group by Academic_Pressure

select Study_Satisfaction,count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Satisfaction

select Sleep_Duration,count(*) from [dbo].[Depression+Student+Dataset]
group by Sleep_Duration

select Dietary_Habits,count(*) from [dbo].[Depression+Student+Dataset]
group by Dietary_Habits

select Have_you_ever_had_suicidal_thoughts,count(*) from [dbo].[Depression+Student+Dataset]
group by Have_you_ever_had_suicidal_thoughts

select Study_Hours,count(*) from [dbo].[Depression+Student+Dataset]
group by Study_Hours

select Financial_Stress,count(*) from [dbo].[Depression+Student+Dataset]
group by Financial_Stress

select Family_History_of_Mental_Illness,count(*) from [dbo].[Depression+Student+Dataset]
group by Family_History_of_Mental_Illness

select Depression,count(*) from [dbo].[Depression+Student+Dataset]
group by Depression

--add index column
alter table [dbo].[Depression+Student+Dataset]
add index_column int identity(1,1)


--modify datatype from bit to varchar
alter table [dbo].[Depression+Student+Dataset]
alter column Depression varchar(max)

--modify depression column 0 is no 1 is Yes
update [dbo].[Depression+Student+Dataset]
set depression = 'Yes' where depression = '1'

update [dbo].[Depression+Student+Dataset]
set depression = 'No' where depression = '0'

select depression , count(*) [count]
from [dbo].[Depression+Student+Dataset]
group by depression


--modify have_you_ever_had_suicidal_thoughts column
alter table [dbo].[Depression+Student+Dataset]
alter column have_you_ever_had_suicidal_thoughts varchar(max)

update [dbo].[Depression+Student+Dataset]
set have_you_ever_had_suicidal_thoughts = 'True' where have_you_ever_had_suicidal_thoughts = '1'

update [dbo].[Depression+Student+Dataset]
set have_you_ever_had_suicidal_thoughts = 'False' where have_you_ever_had_suicidal_thoughts = '0'

select have_you_ever_had_suicidal_thoughts , count(*)
from [dbo].[Depression+Student+Dataset]
group by have_you_ever_had_suicidal_thoughts

--modify family history of mental illness
alter table [dbo].[Depression+Student+Dataset]
alter column Family_History_of_Mental_Illness varchar(max)

update [dbo].[Depression+Student+Dataset]
set Family_History_of_Mental_Illness = 'True' where Family_History_of_Mental_Illness = '1'

update [dbo].[Depression+Student+Dataset]
set Family_History_of_Mental_Illness = 'False' where Family_History_of_Mental_Illness = '0'

select Family_History_of_Mental_Illness , count(*)
from [dbo].[Depression+Student+Dataset]
group by Family_History_of_Mental_Illness

select * from [dbo].[Depression+Student+Dataset]