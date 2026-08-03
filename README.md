# Operations-Dash Analytics Dashboard

This project is a data‑driven analysis of my DoorDash performance from **November 2025 to July 2026**, focused on understanding operational metrics and identifying strategies that improved my earnings as a Dasher.


## Project Overview
Due to my historical performance data being incomplete, I created a **synthetic dataset** that closely mirrored the real data I collected during my deliveries. This dataset includes metrics such as shift dates, times, hours worked, gross earnings, estimated miles, orderes completed, average dollars/mile, zone, and bonus activty.

Through structured analysis, I developed a set of **operational rules** that consistently increased my hourly earnings, reduced wasted time, and improved my overall experience on the platform. These insights form the foundation of the dashboard and the recommendations presented in this project.

---

## Key Objectives

- Analyze delivery patterns and payout structures  
- Identify high‑value time windows and zones  
- Quantify the impact of acceptance rate, mileage, and wait time  
- Develop actionable operational rules for maximizing earnings  
- Build a clean, reproducible analytics workflow using SQL, Power BI, and documentation best practices  

---

## Project Structure
```
nicosys-portfolio-operations-dash/
│
├── data/
│   ├── raw/                # Synthetic raw datasets (CSV, Excel)
│   └── cleaned/            # Cleaned and transformed datasets
│
├──documentation/           # Additional notes, and methodology
│
├──excel-validation/        # Checking SQL results for accuracy 
│
├──images/                  # Visual assets, charts, and exports
│
├── powerbi/                # Power BI dashboard files
│
├── presentation/           # Slides or visuals for port. presentation
│
├── reports/                # Analysis reports and summaries
│
└── sql/                    # SQL scripts for cleaning and transformation
```

---


---

## What’s Included

- Synthetic raw dataset (CSV + Excel)  
- SQL scripts for data cleaning and transformation  
- Power BI dashboard  
- Operational insights and recommendations  
- Documentation and presentation materials  

---

## Outcome

The analysis produced a set of **operational rules** that significantly improved my earnings per hour, reduced downtime, and optimized my delivery workflow. These rules are backed by data and demonstrated through the dashboard and reports included in this repository.

- $2+/mile per order: I’ve researched that the IRS and AAA insurance defines wear and tear as .50-.70/mile. Therefore, to deal with wear and tear, and still make money, I chose $2/mile, leaving me with earnings at $1.30-$1.50/mile. 
- $7+/order: Anything less than an overall order of $7, unless the $/mile is good, usually has me putting more wear and tear on my car and out in the streets dashing longer than needed. $7+/order increases my chances to make more money with less wear and tear on my car and less hours dashing. 
- Order ETAs of <20 min or 20-25 min: Taking too long on 1 order could potentially prevent me from taking 2-3 orders in that same amount of time. 
- Being selective of businesses: Certain restaurants may take too long to prepare orders, or certain orders require more labor and time to complete. I keep notes on a business’s operations and service. 
- Staying away from the Strip due to overall traffic and difficulty in getting to business establishments. 


---

## Tools & Skills Used

### SQL (PostgreSQL)
- Cleaning and standardizing data 
- Aggregating sales, zones, and avg $/mile metrics 

### Excel  
- Validating SQL results

### Power BI  
- Data modeling 
- Building interactive dashboards
-  Visualizing earning trends related to days of week, avg. $/mile, zones, and shift types

### Git & GitHub
- For version control  

### Python 
- future expansion  

---

## Future Improvements

- Add machine learning models to predict high‑value delivery windows  
- Expand synthetic dataset with more realistic behavioral variables, such as weekly earnings, vendor/order type, estimated miles ran, and stress level.  
- Build a web‑based dashboard version using HTML/CSS/JS  

---

## Contact

If you’d like to discuss the analysis, methodology, or dashboard design, feel free to reach out (nrafael@gmail.com) or open an issue in the repository.



