𝟏.𝐏𝐫𝐨𝐛𝐥𝐞𝐦:
Table: Products
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
product_id is the primary key (column with unique values) for this table.
low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.
**Write a solution to find the ids of products that are both low fat and recyclable.
Return the result table in any order.

The result format is in the following example.
Example 1:
Input: 
Products table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+
𝐄𝐱𝐩𝐞𝐜𝐭𝐞𝐝 𝐎𝐮𝐭𝐩𝐮𝐭: 
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+
𝟐.𝐒𝐨𝐥𝐮𝐭𝐢𝐨𝐧:
         𝐒𝐄𝐋𝐄𝐂𝐓 product_id  
         𝐅𝐑𝐎𝐌 products
         𝐖𝐇𝐄𝐑𝐄 low_fats="y" and recyclable ="y";
𝐄𝐱𝐩𝐥𝐚𝐧𝐚𝐭𝐢𝐨𝐧: Only products 1 and 3 are both low fat and recyclable.  


