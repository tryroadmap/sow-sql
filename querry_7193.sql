SELECT
    category,
    product,
    total_spend
FROM (
    SELECT
        category,
        product,
        SUM(spend) AS total_spend,
        ROW_NUMBER() OVER (PARTITION BY category ORDER BY SUM(spend) DESC) AS rank
    FROM
        product_spend
    WHERE
        EXTRACT(YEAR FROM transaction_date) = 2022
    GROUP BY
        category,
        product
) ranked_data
WHERE
    rank <= 2;


/*
Explanation:

We start by querying the product_spend table to get the total spend for each product within each category in the year 2022.
The WHERE clause filters the data to only include transactions that occurred in the year 2022, using the EXTRACT function to extract the year from the transaction_date.
We use the GROUP BY clause to group the data by category and product, and then calculate the total spend for each group using the SUM function.
The inner query is then assigned a row number (rank) for each product within its category, based on the descending order of total spend. This is done using the ROW_NUMBER() function with the OVER clause and PARTITION BY to reset the rank for each category.
Finally, in the outer query, we select the category, product, and total_spend columns from the ranked data but only include rows where the rank is less than or equal to 2. This effectively gives us the top two highest-grossing products within each category.
The output will include three columns: category, product, and total_spend. The result will show the top two products with the highest spend in each category for the year 2022.



*/