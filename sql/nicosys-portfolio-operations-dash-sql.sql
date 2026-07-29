Select
	*
From
	dash
;

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