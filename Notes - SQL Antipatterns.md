# SQL Antipatterns: Avoiding the pitfalls of database programming

What is an antipattern? is simply a technique used to solve some problem, that often leads to another problem, maybe harder to solve than the first one. Frequently an antipattern is also a mistep when solving a problem.

## Logical Database Design Antipatterns

They are antipatterns that appears when we deciding what data we do need to put in our databases, and how we organize this data.

## Physical Database Design Antipatterns

Physical database design antipatterns are concerned to how implement the data management as efficiently as possible - including tables, indexes, and so on.

## Query Antipatterns

These treat how you add data to your database, and how do you retrieve this data from it.

## Application Development Antipatterns

Are simply right and wrong ways to employ SQL in an application.

## Rules of Normalization

Many of the antipatterns are the results of misundertanding concepts of database theory, here we have some studies on these misunderstood topics.

### What does relational mean?

The name relational refers to tables (which in math we call relation), or to the way in a column relates to antoher columns inside a table. Also according with math: A relation is a combination of two sets of values, where these values are from different domains (origins), with some condition that relates these sets. 

When thinking about normalizing tables we first must assure that tables are properly relations, here we have some conditions that should be valid:

1. Rows have no order from top to bottom (the set of all results must be the same).
2. Columns have also no order from left to right (the set of all results also must be the same).
3. Duplicate rows are not allowed (The whole rows must be unique, when searching for an item, you should get only one item).
4. Every column has one type, and one value per row.
5. Rows have no hidden components (columns contain data values, not physical storage indicators like row's id). 
