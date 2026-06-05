suppliers performance queries
 23 Average Cost Per Unit by Supplier


SELECT Supplier_Name,
AVG(Cost_per_Unit_INR) AS avg_cost_per_unit
FROM supplier_performance
GROUP BY Supplier_Name
ORDER BY avg_cost_per_unit DESC;


-- Average Lead Time by Supplier

SELECT Supplier_Name,
AVG(Lead_Time_Days) AS avg_lead_time
FROM supplier_performance
GROUP BY Supplier_Name
ORDER BY avg_lead_time DESC;


--  Average Defect Rate by Supplier
SELECT Supplier_Name,
AVG(Defect_Rate_Percent) AS avg_defect_rate
FROM supplier_performance
GROUP BY Supplier_Name
ORDER BY avg_defect_rate DESC;

-- Best Performing Suppliers
SELECT Supplier_Name,
AVG(Lead_Time_Days) AS avg_lead_time,
AVG(Defect_Rate_Percent) AS avg_defect_rate
FROM supplier_performance
GROUP BY Supplier_Name
ORDER BY avg_defect_rate ASC, avg_lead_time ASC;











