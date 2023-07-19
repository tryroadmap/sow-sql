# sow-sql
A simple template has been developed for quicker query write-ups using GPT-4. Scope of Work (SOW) for query write-ups is a crucial aspect of most daily analyst roles. Data is often queried from multiple tables to achieve specific goals, and having clear expected column titles as output is essential. This presents an excellent opportunity for leveraging GPT-4 to review and complete partially developed query scripts.


To facilitate this process, a clear scheme of all available tables is required. Scope of Work documents can be found within the "sow" folder, containing queries of varying complexities, ranging from easy to medium.


Using GPT-4 for query write-ups not only improves efficiency but also ensures accuracy and consistency in the analytical process. The template enables analysts to focus on formulating high-quality queries and gaining valuable insights from the data.

### How to use
"Write a querry based on the following" + PROMPT .md file.

You can simply copy-paste the prompt entire .md file. 


### Directory
```
.
└── sow-sql
    ├── LICENSE
    ├── README.md
    ├── scripts
    │   ├── querry_7191.sql
    │   ├── querry_7192.sql
    │   └── querry_7193.sql
    └── sow
        ├── PROMPT-7191.md
        ├── PROMPT-7192.md
        └── PROMPT-7193.md

3 directories, 8 files
```

### Demo
Below is a sample prompt layout for generating queries of varying difficulty, from simple to medium complexity. You will find three prompts in the "sow" folders, and for each prompt, there are both manual and GPT-4 generated scripts listed under the "scripts" folder.

#### Sample Query Request Scope of Work (SOW)
### From:
One table containing data on Social Media app (Twitter) users messages (tweets) is given over a specified time period.   

### Query Request Description:
calculate the 3-day rolling average of messages for each user. 

### Expected (columns in order):
user_id, tweet_date, and rolling averages rounded to 2 decimal places.

### Notes
- A rolling average, also known as a moving average or running mean is a time-series technique that examines trends in data over a specified period of time.
- In this case, we want to determine how the tweet count for each user changes over a 3-day period.

### Tables

`tweets `

| Column Name	| Type          |
| ------------- | ------------- |
| user_id       | integer       |
| tweet_date    | timestamp     |
| tweet_count   | integer       |
 



### Prompt 

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