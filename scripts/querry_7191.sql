/* SELECT *
FROM activities
INNER JOIN age_breakdown AS age 
  ON activities.user_id = age.user_id 
WHERE activities.activity_type IN ('send', 'open') 
GROUP BY age.age_bucket; */

/*
WITH table_statistics AS (
  SELECT 
    age.age_bucket, 
    SUM(CASE WHEN activities.activity_type = 'send' 
      THEN activities.time_spent ELSE 0 END) AS send_timespent, 
    SUM(CASE WHEN activities.activity_type = 'open' 
      THEN activities.time_spent ELSE 0 END) AS open_timespent, 
    SUM(activities.time_spent) AS total_timespent 
  FROM activities
 INNER JOIN age_breakdown AS age 
    ON activities.user_id = age.user_id 
  WHERE activities.activity_type IN ('send', 'open') 
  GROUP BY age.age_bucket) 

SELECT 
  age_bucket, 
  ROUND(100.0 * send_timespent / total_timespent, 2) AS send_perc, 
  ROUND(100.0 * open_timespent / total_timespent, 2) AS open_perc 
FROM table_statistics;
*/



SELECT 
    age_bucket AS age_group,
    ROUND((SUM(CASE WHEN activity_type = 'send' THEN time_spent ELSE 0 END) / NULLIF(SUM(time_spent), 0) * 100.0), 2) AS send_perc,
    ROUND((SUM(CASE WHEN activity_type = 'open' THEN time_spent ELSE 0 END) / NULLIF(SUM(time_spent), 0) * 100.0), 2) AS open_perc
FROM 
    activities
INNER JOIN 
    age_breakdown ON activities.user_id = age_breakdown.user_id
GROUP BY 
    age_bucket;


/*
Explanation:

We use the activities table to calculate the sum of time spent sending and opening messages for each user.
The INNER JOIN is used to combine the activities table with the age_breakdown table based on the user_id.
We then use the SUM function with a CASE statement to calculate the total time spent sending and opening messages for each age group.
The ROUND function is used to round the percentage values to two decimal places.
To avoid division by zero errors, we use NULLIF to handle cases where the total time spent is zero.
The final result is grouped by age_bucket (age group) to obtain the breakdown of time spent sending and opening messages as percentages. The user_id column is not required in the output, as it is not part of the expected columns.
Remember to replace age_bucket with the correct column name in the age_breakdown table if it is named differently.


*/