# Study case 1: Small accounting firm

# Requirements

A small accounting firm wants a simple HR application that will help it to keep track of its employees, their positions, allowances, salary scales, and which company vehicles their employees drive.

The application must keep track of all positions at the firm, the employees filling these positions, the allowances for these positions, the salary scales for these positions, and the company vehicles assigned to these positions.

---

- Employees
- Positions
- Vehicles
- Allowances
- Salary scales

# Derive unary and binary relationships

## Building and filling the E-E (entity - entity) matrix

[Entity - entity matrix](Study%20case%201%20Small%20accounting%20firm%20927700ce244c4dae8b89b1c138961f27/Entity%20-%20entity%20matrix%20fae1410371f942d2b9d831fe87e05909.csv)

# Create simplified Entity-Relationship diagram (E-R)

![Study%20case%201%20Small%20accounting%20firm%20927700ce244c4dae8b89b1c138961f27/ER-case-studies-diagrams-case-study-one.png](Study%20case%201%20Small%20accounting%20firm%20927700ce244c4dae8b89b1c138961f27/ER-case-studies-diagrams-case-study-one.png)

# List Assertions for all relationships

First:

- A Position can be allocated many allowances
- A Position can be allotted only one Vehicle
- A Position must be attached to only one SalaryScale
- A Position can be filled by many Employees

Second:

- Each Allowance can be allocated to many Positions
- Each Vehicle must be allotted to only one Position
- Each SalaryScale can be attached to many Positions
- Each Employee can fill many Positions

# Create detailed E-R diagram using assertions

![Study%20case%201%20Small%20accounting%20firm%20927700ce244c4dae8b89b1c138961f27/ER-case-studies-diagrams-case-study-one%201.png](Study%20case%201%20Small%20accounting%20firm%20927700ce244c4dae8b89b1c138961f27/ER-case-studies-diagrams-case-study-one%201.png)

# Transform the detailed E-R diagram into an implementable R-M diagram

![Study%20case%201%20Small%20accounting%20firm%20927700ce244c4dae8b89b1c138961f27/ER-case-studies-diagrams-R-M_case-one.png](Study%20case%201%20Small%20accounting%20firm%20927700ce244c4dae8b89b1c138961f27/ER-case-studies-diagrams-R-M_case-one.png)