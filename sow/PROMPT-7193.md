### Query Request Scope of Work (SOW)
## From:
One table containing data of an online retail customers and their and their spendings on products in different categories.

## Query Request Description:
identify the top two highest-grossing products within each category in the year 2022

## Expected (columns in order):
category, product, and total spend.

## Notes
na

## Tables

`product_spend `

| Column Name	| Type          |
| ------------- | ------------- |
| category      | string       |
| user_id       | integer       |
| product       | string         |
| spend         | decimal         |
| transaction_date | timestamp      |





## Prompt 

| Column Name	| Type                      |
| ------------- | ------------------------- |	
| Table count(s)|	1                       |    
| TABLE_NAME    | product_spend  |
| COLUMNS       | see  tables               |
| SELECT	    |Recommended                   |
|FROM	        |product_spend               |
|WHERE	        |Recommended      |
|GROUPBY        |	Recommended       |
|HAVING	        |not required                         |
|ORDER	        |Recommended                         |
|WITH Clause    |	not required            |
|CREATE PARTITION  |	Recommended                  |
|CREATE INDEX   |	not required                      |
|INNER JOIN     |	not required                |
|OUTER/LEFT/RIGHT       | 	not required          |
|SHOULD MANAGE NULLS        |	not required |
	
	
[Reference: Test this SQL on DataLemur from here](https://datalemur.com/questions/sql-highest-grossing).