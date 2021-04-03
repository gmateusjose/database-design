# Database design

Relational Database ⇒ Collection of organized and inter-related data on a related subject or topic.

## List of terms commonly used

- **Entity:** something that user keeps track of.
- **Relation:** two dimensional table that contains rows and columns.
- **Tuple/Row:** entity, or row within a relation (table).
- **Attribute:** one property of an entity.
- **Column:** attribute of an entity within a relation (table).
- **Identifier:** attribute that can be used to identify rows.
- **Index/Key:** unique or non-unique identifier that can be used to speed up searches.
- **Primary Key:** unique identifier that is used to distinguish rows in a table.
- **Relationship:** what exists between entities or between tables
- **Foreign Key:** is a primary key in one table that appears as a column in another table, and is used to join two tables in a relationship.

## Relational database design

Involves creating a model of the artefact you are trying to create. we have two ways of modelling the data, the **Entity-relationship model,** which is a ****conceptual model, shows what is being represented, the user's point of view about data. And we also have the **Relational model**, which is an implementation model, it shows how the data will be represented in the database, the developer's point of view about data. It's important that the two models exist, and the developer's view follows the user's view of data. 

## Other important concepts

- **Structured Query Language (SQL):** Programming nomenclature used to do operations, organize and retrieve data from a relational database.
- **MariaDB:** Is an open source relational database, it's a MySQL fork.
- **Object-oriented databases:** Databases where an entity is an object, and the database can organize and retrieve objects.

Four main stages of database development: Problem specification → Conceptual Model → Implementation Model → Relational Database

# Six-step Relational database design

## 1. Discover entities and assign attributes

This chapter focused on how to discover the entities and assign attributes to these entities. Here is a list of steps to discovering entities and assigning attributes:

### Step 1.1 Discover the entities

**First:** Identify all the collective nouns and nouns in the statement of the problem that represents objects of interest from the problem domain. These should **not** be descriptions or characteristics of objects of interest.

**Second:** List the discovered objects of interest using plural nouns for objects of interest (entities).

**Check:** Double check to ensure that the entities listed capture all of the objects of interest in the problem domain. 

### Step 1.2 Assign attributes to each entity discovered

**First:** For each entity list the possible properties and/or characteristics recorded in the problem domain and relevant to the client.

**Second:** Ensure that every attribute is where it belongs, that is, that each attribute belongs within the entity that it has been placed in and not in any other entity or entities and that it is not shared between or among entities.

**Check:** Go through every attribute for every entity verifying that it is where it belongs

### Step 1.3 Select identifiers and keys from attributes of each entity

**First:** Go through each attribute in each entity and list the possible identifiers and keys.

**Second:** Select the unique identifiers for each entity from the list of possible identifiers and keys.

**Third:** Out of the list of unique identifiers, select one as the primary key. If there are no unique identifiers, then create one and call it ID or a derivative of ID such as UserID or UserId.

**Fourth:** Ensure that every other attribute in the entity depends wholly and solely on the primary key.

**Check:** Verify that every attribute depends on the primary key, the whole primary key, and nothing but the primary key.

## 2. Derive unary and binary relationships

This chapter focused on how to discover the entities and assign attributes to these entities. Here is a list of steps to discovering entities and assigning attributes:

### Step 2.1 Build the Matrix

**First:** The E-E Matrix is built using entities discovered in Step 1 of the six-step process. It is a table consisting of an equal number of rows and columns, with each entity discovered heading a row and a column. The intersection of the rows and columns represents relationships that may exist between the entities.

**Check:** Verify that every entity discovered is listed on the heading row and heading column and that the order of the entities is the same.

### Step 2.2 Fill in the Matrix

**First:** Go through each cell in the Matrix asking the question, 'is [Entity in Row Heading] related to [Entity in Column Heading]?' If a relationship exists, place a verb in the cell for each relationship.

**Second:** Ignore the top half of the Matrix drawn down the diagonal from the top left of the Matrix to the bottom right of the Matrix since it is a mirror image of the other half.

**Check:** Verify with the client that each relationship represented in the E-E Matrix is valid. Do not create relationships that are neither required nor captured in the problem domain.

## 3. Create a simplified Entity-Relationship diagram

This chapter focused on how to create a preliminary E-R diagram from the information derived in Step 1 and Step 2 of the six-step process. Here is a list of steps to create the simplified E-R diagram:

### Step 3.1 Create simplified E-R diagram

Each of the entities derived in Step 1 the six-step process is represented by a rectangle, clearly indicating the primary key and important attributes. Each of the relationships derived in Step 2 of the six-step process.

**First:** Create the entities (rectangles) clearly indicating the primary key and other important attributes.

**Second:** Create the relationships (diamonds) and join them to the entities according to what was derived in the E-E Matrix

**Check:** Ensure that every entity has a primary key and that the important attributes are depicted on that entity. Also ensure that every relationship has a name and that the name is correct, and that is associated with the correct entities.

## 4. List assertions for all relationships

This chapter focused on how to create a list of assertions from the simplified E-R diagram derived in Step 3 of the six-step process. Here is a list of steps to create the list of assertions

### Step 4.1 List assertions using the simplified E-R diagram

Each relationship on the simplified E-R diagram will yield two assertions because the relationship is looked at from two directions: from Entity A to Entity B, then in the other direction from Entity B to Entity A. Therefore, there will be twice as many assertions as there are relationships.

**First:** Look at each relationship from Entity A to Entity B, and write out the relationships in words, using the entities involved in the relationship, the optionalities, and cardinalities. This is how assertions should be written:

(Entity Ocurrence) **[optionality]** (relationship) **[cardinality]** (Entity Occurrence or Entity Class)

**Second:** Look at each relationship in reverse, from Entity B to Entity A, and write out the relationship in words, using the entities involved in the relationship, the optionalities, and cardinalities.

**Check:** Verify with the client that each assertion is true and correct within the context of the database that is being modelled.

## 5. Create a detailed E-R diagram using assertions

This chapter combines the assertions generated in the previous step, Step 4, with the simplified E-R diagram created in Step 3 to create a detailed E-R diagram. Here is what to do to create a detailed E-R diagram:

### Step 5.1 Use assertions and simplified E-R diagram to create detailed E-R diagram

Each relationship on the simplified E-R diagram yielded two assertions. These two assertions will now appear on either side of the relevant relationship. Go through each relationship and its associated assertions one at a time until they have all been inserted on the diagram.

**First:** List the assertions and include **(optionality:cardinality)** at the end of each assertion

**Second:** Insert the generated assertions as **optionality:cardinality** one at a time on the simplified E-R diagram, in the correct position, creating the detailed E-R diagram. Do this one relationship at a time, one assertion at a time.

**Check:** In the detailed E-R diagram each assertion is always placed closest to the first entity occurrence stated in the assertion; and each relationship has two associated assertions, one on either side of the relationship.

## 6. Transform the detailed E-R diagram into an implementable R-M diagram

This chapter focused on how to transform the detailed E-R diagram, created in the previous step, into a Crow's Foot Relational Model diagram that can be easily implemented on any RDBMS. Here is a list of steps to transform the E-R diagram into an R-M diagram:

### Step 6.1 Many-to-many relationships

This step will transform many-to-many relationships on the detailed E-R relationships on the detailed E-R diagram into many-to-many relationships on the R-M diagram. Many-to-many relationships in the E-R diagram are identified by a cardinality of N (many or at least one) on both sides of the relationship (diamond).

**First:** Identify all many-to-many relationships. These relationships are identified by a cardinality of N (many/at least one) on both sides of the relationship.

**Second:** Remove both the relationship and the connectors to that relationship. Replace the relationship with a new Relation. The name of this new Relation should be a combination of the name of the two Relations that are on either side of the removed relationship.

**Third:** Create new 1 to 0 or more, or 1 to 1 or more relationships that connect the two existing Relations to the new Relation. Use a 1 to 0 or more relationship if the optionality of the old relationship was 0 (can), and a 1 to 1 or more if the optionality was 1 (must). The many side (Crow's Foot) of the new relationship should be on the new Relation. Ensure that the primary key for each of the two existing Relations becomes a foreign key in the new Relation, and create a new and separate primary key for the new Relation, such as a unique identifier (ID).

**Fourth:** Explore whether attributes exist for the newly created Relation. In most cases, they will not, but in some cases, they will. These attributes must be valid for both foreign keys and not for anyone foreign key individually; otherwise, that attribute belongs in one of the relations for the foreign keys and not in this new relation.

**Check:** Verify that each new Relation contains two foreign keys. Also check to see whether there are possible attributes for the new Relations and if there are, ensure that these new attributes depend on both foreign keys of the new Relation and not on anyone foreign key individually.

### Step 6.2 One-to-many relationships

This step will transform one-to-many relationships on the detailed E-R diagram into one-to-many relationships on the R-M diagram. One-to-many relationships on the E-R diagram are identified by a cardinality of N (many or at least one) on one side of the relationship (diamond) and a cardinality of 1 (only one) on one side.

**First:** Identify all one-to-many relationships. These relationships are identified by a cardinality of N (many or at least one) on one side of the relationship (diamond) and a cardinality of 1 (only one) on the one side.

**Second:** Group together the Relation and relationship on the side of the relationship where the cardinality is 1 (only one).

**Third:** Remove both the relationship and the connector to that relationship, and create a new 1 to 0 or more, or 1 to 1 or more, relationship that connects the two Relations. Use a 1 to 0 or more relationship if the optionality on the N (many) side of the old relationship was 0 (can), and a 1 to 1 or more if the optionality was 1 (must). The many side (Crow's Foot) of the new relationship should be on the Relation that absorbed the old relationship, and the primary key of the non-absorbing Relation becomes a foreign key in the absorbing Relation. 

**Check:** Verify that the foreign key and Crow's Foot are in the correct location - the foreign key is in the Relation that absorbed the old relationship, and the Crow's Foot is on that Relation also.

### Step 6.3 One-to-one relationships

This step will transform one-to-one relationships on the detailed E-R diagram into one-to-one relationships on the R-M diagram. One-to-one relationships in the E-R diagram are identified by a cardinality of 1 (only one) on both sides of the relationship (diamond).

**First:** Identify all one-to-one relationships. These relationships are identifiable by having a cardinality of 1 (only one) on both sides of the relationship (diamond).

**Second:** Group together the Relation and relationship on the side of the relationship where the optionality is 1 (must). In most cases, one side of the old relationship will have an optionality of 1 (must) and the other an optionality of 0 (can). If both sides have an optionality of 1 (must), then the old relationship can be absorbed by either relation.

**Third:** Remove both the relationship and the connectors to that relationship, and create a new 1 to 1 relationship that connects the two Relations. The primary key of the non-absorbing Relation becomes a foreign key in the absorbing Relation.

**Check:** Verify that the foreign key is in the correct Relation - the Relation that absorbed the old relationship.

### Step 6.4 Combine results to create R-M diagram

Combining the diagrams created in Step 6.1 to Step 6.3 creates the final Crow's Foot Relational Model Diagram. Depending on the nature and complexity of the problem, more than one diagram may be required to represent the database design.

# Implementing the design

## RDBMSs

A relational database management system (RDBMS) is an administration system (RDBMS) is an administration and management system for relational databases. The role of the RDBMS is to control access to the files holding the tables' data, ensuring that they are accessed in a manner that preserves the integrity of the data in those files.

## Transactions and ACID compliance

A database transaction is a logical unit of database operations that are executed as one, all together, or none at all. Each database transaction expects to find the database in a consistent and reliable state before it is processed and must leave the database in a consistent and reliable state for the next transaction after it has been processed. Database transactions must be **A**tomic, **C**onsistent, **I**solated and **D**urable (ACID). ACID compliance guarantees the integrity of the data in the tables of an RDBMS database each time a database transaction is processed.

## Normalization 

Normalization is the process of organizing the Relations (tables) in a database so that they reduce data redundancy and prevent inconsisten data dependencies. There are at least three normal forms associated with normalization: first normal form (1NF), second normal form (2NF), and third normal form (3NF). Any Relation (table) that is in first normal form exhibits domain integrity, and domain integrity means that all the possible values of an attribute are legitimate ones. Any table that is in second normal form exhibits entity integrity and is also, by definition, in first normal form. Entity integrity ensures that each row in the tables is a unique and genuine entity, and that every other column in that every other column in that table depends solely on the primary key. Any table that is in third normal form exhibits referential integritiy and is also, by definition, in first and second normal forms. Referential integrity ensures that all references to values in columns in other tables are authentic - authentic foreign key values.

## Indexes

An index is a data structure that is created for a database table but is external to that table, and if well selected and implemented can result in faster searches for data in that table. Primary keys and foreign key play an important role in storing, organizing, and finding data stored in these databases. As a result, primary keys and foreign keys should always be indexed.

## Data types 

Each column in a table must specify the type of data that it holds, which is refered to as the data type of that column. The type of data that a column holds is specified when the table is being created and generally fall into four main categories: Character, numeric, date and binary data.
