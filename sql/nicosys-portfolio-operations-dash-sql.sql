/*
Business Question:
What’s the most money I made in a day? Week?
What are the compositions of those days? Can I/Should I repeat those type of days; efficient to do so?

Stakeholder:
myself as the dasher 

Purpose:
To see how much money I've earned in a day and in a week. 

SQL Query: Query Below

Findings:

Business Insight:

Recommendation:

*/

Select
	max(gross_earnings)
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


/*
Business Question:
What shifts make the most money?

Stakeholder:
myself as the dasher 

Purpose:
Define the shifts that generate me the most money. 

SQL Query: Query Below

Findings:
Average earnings:
Targeted Sprint: $68.64, Dinner: $67.66, Peak Pay: $66.36, Weekend Dinner: $65.73, Lunch: $63.64, Open Schedule: $47.08




Business Insight:


Recommendation:

*/

Select
	  Round(avg(gross_earnings),2) avg_earnings
	, shift_type
From
	dash
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

Business Insight:


Recommendation:

*/


/*
Business Question:
What order paid the highest?

Stakeholder:
myself as the dasher 

Purpose:
To see which order(s) pay me the highest. 

SQL Query: Query Below

Findings:

Business Insight:


Recommendation:

*/



/*
Business Question:
What orders are associated with making the most money overall?

Stakeholder:
myself as the dasher 

Purpose:
To see which order(s) pay me the highest. 

SQL Query: Query Below

Findings:

Business Insight:


Recommendation:

*/


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