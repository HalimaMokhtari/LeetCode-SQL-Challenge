Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.

The result format is in the following example.
Example :

Input: 
Visits
+----------+-------------+
| visit_id | customer_id |
+----------+-------------+
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |
+----------+-------------+
Transactions
+----------------+----------+--------+
| transaction_id | visit_id | amount |
+----------------+----------+--------+
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |
+----------------+----------+--------+
Output: 
+-------------+----------------+
| customer_id | count_no_trans |
+-------------+----------------+
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |
+-------------+----------------+
**** What do we need to find? ****

Customers that visited the Mall but didn't do any transactions and how many times have they did that .

Let's Break it down:

- We have 2 Tables (in the screenshot below): rapidly think of joins.
- Transactions is NULL : that's a condition ! So we need a "WHERE"
- We need to know how many time they visited so we'll  be using a count function.
- In the end we’ll group the results by costumer_id.

**By grouping the results by customer_id, we are telling the database to group all the rows that have the same customer_id together.
This way, we can apply the COUNT function to each group separately, which gives us the number of visits made by each customer.

If we didn't group the results, the COUNT function would simply count the number of rows in the entire table that match the condition in the WHERE clause, 
without distinguishing between different customers.
CODE:

select  visits.customer_id, count(visits.visit_id) as count_no_trans
from visits
left join transactions 
on visits.visit_id = transactions.visit_id
where transactions.transaction_id is null
group by visits.customer_id;





