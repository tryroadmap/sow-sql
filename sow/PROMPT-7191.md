### Query Request Scope of Work (SOW)
## From:
Two tables containing data on customers and their spending on products in different categories.

## Query Request Description:
update the payment status of advertisers based on the information in the daily_pay table. The output should include the user ID and their current payment status, sorted by the user id.  

## Expected (columns in order):
user ID and their current payment status, sorted by the user id.

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
| COLUMNS       | see previous tables       |
| SELECT	    |category,                  |
|FROM	        |product_spend              |
|WHERE	        |EXTRACT(YEAR FROM transaction_date) = 2022      |
|GROUPBY        |	category, product       |
|HAVING	        |Na                         |
|ORDER	        |Na                         |
|WITH Clause    |	Recommended             |
|CREATE PARTITION  |	Na                  |
|CREATE INDEX   |	Na                      |
|INNER JOIN     |	Na                      |
|OUTER/LEFT/RIGHT       | JOIN	Na          |
|SHOULD MANAGE NULLS        |	Recommended |
	
	
