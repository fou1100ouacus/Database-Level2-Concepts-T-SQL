Create table  Weather (id int, recordDate date, temperature int)
Truncate table Weather
insert into Weather (id, recordDate, temperature) values ('1', '2015-01-01', '10')
insert into Weather (id, recordDate, temperature) values ('2', '2015-01-02', '25')
insert into Weather (id, recordDate, temperature) values ('3', '2015-01-03', '20')
insert into Weather (id, recordDate, temperature) values ('4', '2015-01-04', '30')

select * from Weather


--self join

--subtracts one day from w2.recordDate.
--This is now compatible with SQL Server's syntax for date manipulation.
--SELECT w2.id 
--FROM Weather w1
--JOIN Weather w2
--  ON w1.recordDate = DATEADD(DAY, -1, w2.recordDate)
--WHERE w2.temperature > w1.temperature;

select w1.id from Weather w1, Weather w2
where datediff(w1.recordDate, w2.recordDate)=1 and w1.temperature > w2.temperature
