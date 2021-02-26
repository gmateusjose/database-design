# Study case 2: Small repair shop

## Requirements

The owners of a small computer repair shop would like to keep track of the repair jobs for computers they repair, the items used for each repair job, the labor costs for each repair job, the repairmen performing each repair job, and the total cost of each repair job.

When customers bring their computers in to be repaired, they make a deposit on the repair job and are given a date to return and uplift their computer. Repairmen then perform repairs on the customers' 
computers based on the repair job, and detail the labor costs and the items used for each repair job.

When customers return they pay the total cost of the repair job less the deposit, collect a receipt for their payment, and uplift the repaired computer using this payment receipt.

## Discovering the Entities

- Repair Jobs
- Deposits
- Items
- Payments
- Repairmen
- Computers
- Customers

# Derive unary and binary relationships

## Building and filling the E-E (entity - entity) matrix

[Entity - entity matrix](Study%20case%202%20Small%20repair%20shop%200d86fa225ce54cc0af6174d4a33d4124/Entity%20-%20entity%20matrix%20c85e55c5477e40189b75da96c9f9ef7b.csv)

# Create simplified Entity-Relationship diagram (E-R)

![Study%20case%202%20Small%20repair%20shop%200d86fa225ce54cc0af6174d4a33d4124/ER-case-studies-diagrams-case-study-two.png](Study%20case%202%20Small%20repair%20shop%200d86fa225ce54cc0af6174d4a33d4124/ER-case-studies-diagrams-case-study-two.png)

# List assertions for all relationships

First:

- A RepairJob must be conducted on only one computer
- A RepairJob must be requested by only one Customer
- A RepairJob can use many Items
- A RepairJob must be peformed by at least one Repairmen
- A RepairJob must have made at least one Deposit
- A RepairJob can have made many Payments
- An Item can be ordered by many Repairmen
- A Customer must own at least one Computer

Second:

- Each computer must have conducted at least one RepairJob
- Each Customer can request many RepairJobs
- Each Item can be used in many RepairJobs
- Each Deposit must be made for only one RepairJob
- Each Payment must be made for only one RepairJob
- Each Repairmen can order many Items
- Each Computer must be owned by only one Customer

# Create detailed E-R diagrams using assertions

![Study%20case%202%20Small%20repair%20shop%200d86fa225ce54cc0af6174d4a33d4124/ER-case-studies-diagrams-case-study-two%201.png](Study%20case%202%20Small%20repair%20shop%200d86fa225ce54cc0af6174d4a33d4124/ER-case-studies-diagrams-case-study-two%201.png)

# Transform the detailed E-R diagram into an implementable R-M diagram

![Study%20case%202%20Small%20repair%20shop%200d86fa225ce54cc0af6174d4a33d4124/ER-case-studies-diagrams-R-M_case-two.png](Study%20case%202%20Small%20repair%20shop%200d86fa225ce54cc0af6174d4a33d4124/ER-case-studies-diagrams-R-M_case-two.png)