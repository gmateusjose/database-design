# Study case 3: Small college

# Requirements

The registrar at a small college wants an application that will help their department keep track of the scheduled classes, the courses and lecturers appearing in the schedule, and the students registering for courses according to the schedule.

Courses are scheduled every semester and this is documented in the schedule of classes, which also documents the lecturers assigned to each scheduled class. Students register for courses according to the list of scheduled classes.

Users (students, lecturers, and other college staff) must login to the application to gain access, and the application must keep track of  user logins/logouts. In addition, users must have different levels of  access, which will determine their access to different parts of the application.

# Discovering the entities and assigning attributes

## Discovering the Entities

- Students
- Lecturers
- Users
- Access levels
- Semesters
- Scheduled classes
- Courses
- Log entries

## Assigning attributes and keys to entities

# Derive unary and binary relationships

## Build and filling the E-E (entity - entity) matrix

[Entity - entity matrix](Study%20case%203%20Small%20college%206beceeafadd7448a8299d9cb279f7978/Entity%20-%20entity%20matrix%20a3326ebc3a95430aba2a733d1a033de9.csv)

# Create simplified Entity-Relationship diagram (E-R)

![Study%20case%203%20Small%20college%206beceeafadd7448a8299d9cb279f7978/ER-case-studies-diagrams-case-study-three.png](Study%20case%203%20Small%20college%206beceeafadd7448a8299d9cb279f7978/ER-case-studies-diagrams-case-study-three.png)

# List assertions for all relationships

First:

- A User can create many Users
- A User can create many LogEntries
- An AccessLevel can be designated to many Users
- A Student must be assigned to only one User [login]
- A Lecturer must be assigned to only one User [login]
- A Course can be the prerequisite for many [other] Courses
- A Lecturer can lecture many Courses
- A Lecturer can lecture many Scheduled Classes
- A Course can be scheduled many times in the Schedule [of classes]
- A Semester can be created for many ScheduledClasses
- A Student can register for many ScheduledClasses

Second:

- Each User must be created by only one [other] User
- Each LogEntry must be created by only one User
- Each User must be designated only one AccessLevel
- Each User [login] can be assigned to only one Student
- Each User [login] can be assigned to only one Lecturer
- Each Course can have as prerequisites many [other] Courses
- Each Course can be lectured by many Lecturers
- Each ScheduledClass must be lectured by only one lecturer
- Each ScheduledClass must be scheduled for only one Course
- Each ScheduledClass must be created for only one Semester
- Each ScheduledClass can be registered for by many Students

# Create detailed E-R diagram using assertions

![Study%20case%203%20Small%20college%206beceeafadd7448a8299d9cb279f7978/ER-case-studies-diagrams-case-study-three%201.png](Study%20case%203%20Small%20college%206beceeafadd7448a8299d9cb279f7978/ER-case-studies-diagrams-case-study-three%201.png)

# Transform the detailed E-R diagram into an implementable R-M diagram

![Study%20case%203%20Small%20college%206beceeafadd7448a8299d9cb279f7978/ER-case-studies-diagrams-R-M_case-three.png](Study%20case%203%20Small%20college%206beceeafadd7448a8299d9cb279f7978/ER-case-studies-diagrams-R-M_case-three.png)