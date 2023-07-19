### Query Request Scope of Work (SOW)
## From:
Two tables containing data on Social Media app users, including their age and time spent sending and recieving messages on the platform.

## Query Request Description:
obtain a breakdown of the time spent sending vs. opening messages as a percentage of total time spent on the platform grouped by age group. Round the percentage to 2 decimal places in the output.
## Expected (columns in order):
age_bucket,	send_perc,	open_perc ID 

## Notes
Calculate the following percentages:
- time spent sending / (Time spent sending + Time spent opening)
- Time spent opening / (Time spent sending + Time spent opening)
To avoid integer division in percentages, multiply by 100.0 and not 100.

## Tables

`activities`

| Column Name	| Type          |
| ------------- | ------------- |
| activity_id   | integer       |
| user_id       | integer       |
| activity_type | string ('send', 'open', 'chat')  |
| time_spent    | float         |
| activity_date | datetime      |


`age_breakdown`
	
| Column Name	| Type          |
| ------------- | ------------- |
| user_id       | integer       |
| user_id       | string ('21-25', '26-30','31-25')  |


## Prompt 

| Column Name	| Type                      |
| ------------- | ------------------------- |	
| Table count(s)|	2                       |    
| TABLE_NAME    | activities, age_breakdown |
| COLUMNS       | see  tables               |
| SELECT	    |Recommended                   |
|FROM	        |activities              |
|WHERE	        |Recommended      |
|GROUPBY        |	age_bucket       |
|HAVING	        |not required                         |
|ORDER	        |not required                         |
|WITH Clause    |	Recommended             |
|CREATE PARTITION  |	not required                  |
|CREATE INDEX   |	not required                      |
|INNER JOIN     |	ON activities.user_id = age.user_id                |
|OUTER/LEFT/RIGHT       | 	not required          |
|SHOULD MANAGE NULLS        |	Recommended |
	
	
