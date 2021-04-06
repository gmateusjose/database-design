# SQL Antipatterns: Avoiding the pitfalls of database programming

What is an antipattern? is simply a technique used to solve some problem, that often leads to another problem, maybe harder to solve than the first one. Frequently an antipattern is also a mistep when solving a problem.

**Logical Database Design Antipatterns:** They are antipatterns that appears when we deciding what data we do need to put in our databases, and how we organize this data.

**Physical Database Design Antipatterns:** Physical database design antipatterns are concerned to how implement the data management as efficiently as possible - including tables, indexes, and so on.

**Query Antipatterns:** These treat how you add data to your database, and how do you retrieve this data from it.

**Application Development Antipatterns:** Are simply right and wrong ways to employ SQL in an application.

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

## Myths about normalization

- "Normalization makes a database slower. Denormalization make a database faster:" Although a denormalization could vanish some joins, it can also makes your database less flexible and difficult many other queries. There are some uses for denormalization but first assure that the database is design in a normal form, and if necessary denormalize it.
- "Normaliztion says to push the data out to child tables and reference it using a pseudokey:" Pseudokeys are used for things like convenience, perfomance or storage efficiency
- "Normalization is where you separate attributes as much as possible, suach as in Entity-Attribute-Value design:" It's common for developers to use the word normalization to imply that it makes data less human-readable or less convenient to query, although the opposite is true.
- "No one needs to normalize past the third normal form. The other normal forms are so esoteric that you'll never encounter them:" False, more than 20% of business databases contain designs that satisfy the first three normal forms, but violates the fourth normal form.

## What is normalization 

Normalization processes have three objectives:
1. Represent facts about the real world in a understandable manner
2. Reducing redundant, anomalous and inconsistent data
3. Suport integrity constraints

Normalization helps us store data correctly and avoid getting into trouble, it's practically inevitable that a database that is not normalized becomes a mess. When a table satisfies rules of normalization, we say the table is in normal form.

- **First Normal Form:** The table must be a valid relation (section What does realtional mean?) and the table also must not have any repeating groups (redundancy). The proper design could be create a separate table to store values.
- **Second Normal Form:** Is identical to the first normal form, unless your table has a compound primary key.
- **Boyce-Codd Normal Form:** Evolution of the third normal form. All nonkey attributes must depend on the key of the table.
- **Fourth Normal Form:** Use only a single intersection table to represent a single many-to-many relationship.
- **Fifth Normal Form:** Table that meets the criteria of Boyce-Codd normal form and does not have a compound primary key.

## Further Normal Forms

- **Domain-Key Normal Form:** Says that every contraint on a table is a logical consequence of the table's domain constraints and key contraints.
- **Sixth Normal Form:** Seeks to eliminate all join dependencies, mainly for things that change over time. It's used to support a history of changes to attributes. It will require a history table for each attribute who happens to change over time. This approach can easily lead to an overabundance of tables, so keep caution.
