### Query Request Scope of Work (SOW)
## From:
One table containing data on Social Media app (Twitter) users messages (tweets) is given over a specified time period.   

## Query Request Description:
calculate the 3-day rolling average of messages for each user. 

## Expected (columns in order):
user_id, tweet_date, and rolling averages rounded to 2 decimal places.

## Notes
- A rolling average, also known as a moving average or running mean is a time-series technique that examines trends in data over a specified period of time.
- In this case, we want to determine how the tweet count for each user changes over a 3-day period.

## Tables

`tweets `

| Column Name	| Type          |
| ------------- | ------------- |
| user_id       | integer       |
| tweet_date    | timestamp     |
| tweet_count   | integer       |
 



## Prompt 

| Column Name	| Type                      |
| ------------- | ------------------------- |	
| Table count(s)|	1                       |    
| TABLE_NAME    |  tweets                   |
| COLUMNS       | see  tables               |
| SELECT	    |Recommended                |
|FROM	        |tweets                     |
|WHERE	        |not required               |
|GROUPBY        |	not required            |
|HAVING	        | not required              |
|ORDER BY	    | Recommended               |
|WITH Clause    |	not required            |
|CREATE PARTITION  |	Recommended                  |
|CREATE INDEX   |	not required                     |
|INNER JOIN     |	not required                     |
|OUTER/LEFT/RIGHT       | 	not required    |
|SHOULD MANAGE NULLS     |  	not required|
	
	
