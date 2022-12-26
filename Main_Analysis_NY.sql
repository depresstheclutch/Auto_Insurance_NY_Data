#UnsatisifedCompRatio
SELECT
  Company_Name,
  Filing_Year,
  (Upheld_Complaints/Total_Complaints)* 100 AS UnsatisifedCompRatio,
FROM
  `gda-playground.Auto_12252022.AutoInsurance`
WHERE
  Total_Complaints != 0
ORDER BY
  UnsatisifedCompRatio,
  Filing_Year DESC; 

# Average Premiums_ written FOR a company FOR ALL the years that they existed
SELECT
  Company_Name,
  AVG(Premiums_Written__in_Millions_) AS Average_Prem
FROM
  `gda-playground.Auto_12252022.AutoInsurance`
GROUP BY
  Company_Name; 
  
#SatisifedCompRatio
SELECT
  Company_Name,
  Filing_Year,
  (Not_Upheld_Complaints/Total_Complaints)* 100 AS SatisifedCompRatio,
FROM
  `gda-playground.Auto_12252022.AutoInsurance`
WHERE
  Total_Complaints != 0
ORDER BY
  SatisifedCompRatio,
  Filing_Year DESC;