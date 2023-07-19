/*
SELECT    
  user_id,    
  tweet_date,   
  ROUND(AVG(tweet_count) OVER (
    PARTITION BY user_id     
    ORDER BY tweet_date     
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
  ,2) AS rolling_avg_3d
FROM tweets;

*/

SELECT 
    user_id,
    tweet_date,
    ROUND(AVG(tweet_count) OVER (PARTITION BY user_id ORDER BY tweet_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS rolling_average
FROM 
    tweets;
/*
Explanation:

We use the tweets table to calculate the rolling average of tweet_count for each user.
The AVG function with the OVER clause is used to calculate the average of tweet_count over a specified window.
The PARTITION BY user_id part ensures that the rolling average is calculated separately for each user.
The ORDER BY tweet_date specifies the order of rows in the partition, allowing us to calculate the rolling average based on the tweet_date.
The ROWS BETWEEN 2 PRECEDING AND CURRENT ROW defines the window of the rolling average, which includes the current row and the two preceding rows (3-day period).
The ROUND function is used to round the rolling averages to two decimal places.
The output will include three columns: user_id, tweet_date, and the rolling_average rounded to 2 decimal places. The data will be sorted by user_id and tweet_date.

Please note that the provided query assumes that the tweets table contains the columns user_id, tweet_date, and tweet_count as described in the table schema provided. If the column names or table structure are different, you may need to modify the query accordingly.
*/

