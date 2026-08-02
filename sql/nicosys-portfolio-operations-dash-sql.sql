/*
Business Question:
What’s the most money I made in a day?
What are the compositions of those days? 

Stakeholder:
myself as the dasher 

Purpose:
To see how much money I've earned in a day. 

SQL Query: Query Below

Findings:
The day that has earned me the most money is Sunday.
Tripple-digit earnings come from three specifdic days:
Sunday, 31 shifts, $2,059.59
Friday, 27 shifts, $1,908.95
Saturday, 25 shifts, $1,579.84
Friday-Sunday shifts account for 71%(71.41%) of total earnings.
Monday-Thurs shifts make up the remaining 29%(28.59%) of total earnings.
Shift types associated with highest earnings are:
Dinner on Fridays totaling 10 shifts 
and Weekend Dinners: 15 Sunday Dinners | 11 Sat Dinners

Business Insight:
The highest earning days come from Friday - Sunday during dinner time.
Friday - Sunday shifts account for 71% or total gross earnings. 

Recommendation:
Focus more on dashing Friday-Sunday. 
Further investigate which hours of busiest days and shift type earn the most money. 

0 = Sunday
1 = Monday
2 = Tuesday
3 = Wednesday
4 = Thursday
5 = Friday
6 = Saturday
*/

--Days I earn and work the most
Select
	  sum(gross_earnings)
	, day_name
	, count(day_name)
From
	dash
Group By
	  day_name
Order By
	sum(gross_earnings) desc
;


/*
Out of my busy days, What dash zones am I earning the most money?
Henderson: $2,228.78
Green Valley: $1,165.78

To veiw specific days related to zones, uncomment day_name from Select and Group By clauses.
*/

Select
	  sum(gross_earnings)
	, dash_zone
From
	dash
Where
	day_name in (0,5,6) --Fridays(5), Saturdays(6), and Sundays(0)
Group By
	dash_zone
Order By
	sum(gross_earnings) desc
;

Select
	sum(gross_earnings)
From
	dash
;

--What shift types are associated with highest earnings? Dinner on Fridays and Weekend Dinners
Select
	  sum(gross_earnings)
	, day_name
	, count(day_name)
	, shift_type
From
	dash
Where
	day_name in (5,6,0)
Group By
	  day_name
	, shift_type
Order By
	sum(gross_earnings) desc
;



Select
	  sum(gross_earnings)
	, day_name
	, count(day_name)
	, shift_type
	--, start_time
	--, end_time
From
	dash
Where
	day_name not in (5,6,0)
Group By
	  day_name
	, shift_type
	--, start_time
	--, end_time
Order By
	sum(gross_earnings) desc
;


--$7,769.93 total gross earnings 
Select
	sum(gross_earnings)
From
	dash
;


Select
	  gross_earnings
	, shift_date
	, shift_type
	, start_time
	, end_time
	, hours_worked
	, estimated_miles
	, orders_completed 
	, avg_dollars_per_mile
	, dash_zone
	, bonus_active
From
	dash
Order By
	gross_earnings desc
;

--Use case to group earnings by ranges: $80-$90, $70-$60, $50, $30-$40
Select
	*
From
	dash
;


--shifts where avg $/mile is $2 or more
Select
	*
From
	dash
Where
	avg_dollars_per_mile >1.99
;


--avg gross earnings/day = $65.85
Select
	Round(avg(gross_earnings),2)
From
	dash
;

Select
	*
From
	dash
Where
	day_name in (5,6,0)
;

/*
Business Question:
What shifts make the most money during busy days of week?

Stakeholder:
myself as the dasher 

Purpose:
On busy days of week, define the shifts that generate me the most money. 

SQL Query: Query Below

Findings:
Targeted Sprint: $80.68, 
Dinner: $70.48, 
Peak Pay: $66.09, 
Weekend Dinner: $65.73, 
Open Schedule: $38.60


Business Insight:
On average, Targeted Sprint shift have the highest earnings at $80.68/shift. 
However, following close in second highest earnings is Dinner shifts at $70.48.

Recommendation:
For more consistentcy and realiability, focus on doing Dinner and Weekend Dinner shifts.
When the opportunity arises, do targeted sprint and Peak Pay shifts based off of busy periods.
Since these are only promos, regular business should take place during normal dinnner and weekend dinner shifts.
Everything else is extra/bonus. 
*/

Select
	  Round(avg(gross_earnings),2) avg_earnings
	, shift_type
From
	dash
Where
	day_name in (5,6,0)
Group By
	  shift_type
Order By
	avg(gross_earnings) desc
;


Select
	  max(gross_earnings) max_earnings
	, shift_type
From
	dash
Where
	day_name in (5,6,0)
Group By
	  shift_type
Order By
	max(gross_earnings) desc
;

Select
	  min(gross_earnings) min_earnings
	, shift_type
From
	dash
Where
	day_name in (5,6,0)
Group By
	  shift_type
Order By
	min(gross_earnings) desc
;

/*
Business Question:
What is my avg, min, max $/mile?

Stakeholder:
myself as the dasher 

Purpose:
To reveal $/mile during shifts and see if I'm being efficient with my time and miles on the road. 

SQL Query: Query Below

Findings:
Avg $/mile = $3.45
Min $/mile = $.60
Max $/mile = $8.55

Business Insight:
On average I'm earning $1.45 more (72% more) than my normal rule of $2/mile.

Recommendation:
Keep averages where they are at proceed at >=$2/mile. 
Investigate min $/mile and avoid behaviors that lead to that outcome.
Investigate max $/mile of $8.55 to increase this outcome. 

*/

--avg $/mile, min $/mile, max $/mile 
Select
	  Round(avg(avg_dollars_per_mile),2)
	, min(avg_dollars_per_mile)
	, max(avg_dollars_per_mile)
From
	dash
;

/*

*/
Select
	*
From
	dash
Where
	avg_dollars_per_mile >1.8
Order By
	gross_earnings desc
;

--progress over time: avg $/mile, avg earnings, and hours worked 
Select
	  Round(avg(avg_dollars_per_mile),2) avg_dollar_per_mile
	, round(avg(gross_earnings),2) avg_earning
	, shift_date
	, hours_worked
From
	dash
Group By
	  shift_date
	, hours_worked
Order By
	  shift_date
;



Select
	*
From
	dash
;



/*
Business Question:
What is my average hours/shift?

Stakeholder:
myself as the dasher 

Purpose:
Figure out the average amount of hours I dash per shift. And having the goal to improve the amount of money I earn within that average. 

SQL Query: Query Below

Findings:

Business Insight:


Recommendation:

*/



Create Table dash (
	  shift_date date
	, shift_type varchar(55)
	, start_time time
	, end_time time
	, hours_worked numeric(4,2)
	, gross_earnings decimal(5,2)
	, estimated_miles numeric(4,1)
	, orders_completed int
	, avg_dollars_per_mile decimal(3,2)
	, dash_zone varchar(25)
	, bonus_active varchar(3)
	, notes text
)
;

Alter Table dash
add column day_name int 
	generated always as (extract(dow from shift_date)) stored;

