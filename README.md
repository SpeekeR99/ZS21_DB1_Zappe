# A Simple Database

## Project Description
This project implements a database for managing activities at the Children and Youth House (DDM).
The database contains information about children, clubs, leaders, rooms, and schedule events.
The goal is to efficiently manage registrations, plan schedules, and track capacities.

## Functionality
- **Entity model**: Includes children, leaders, clubs, rooms, and schedule events.
- **Relational schema**: All entities are linked through relationships according to business rules.
- **Support for 3rd normal form**: The database is designed to minimize redundancy and ensure consistency.
- **Views and scenarios**:
  - Views allow for easy querying of specific data (e.g., children registered for a particular event).
  - Scenarios test the functionality of the views and database consistency.

## Database Structure
### Tables
1. **Child**
   - Information about children including name, address, and contact details.
   - Primary key: `dite_id`.

2. **Leader**
   - Information about club leaders, including contact details.
   - Primary key: `vedouci_id`.

3. **Club**
   - Descriptions of the individual clubs.
   - Primary key: `krouzek_id`.

4. **Room**
   - Information about the rooms where the clubs take place.
   - Primary key: `mistnost_id`.

5. **Schedule Event**
   - Links clubs with rooms, leaders, and time schedules.
   - Primary key: `rozvrhova_akce_id`.

6. **Registration**
   - Records of children's registration for specific schedule events.
   - Primary key: `prihlaska_id`.

### Relational Schema
- Each club has exactly one leader, but one leader can lead multiple clubs.
- Each club takes place in one room, but one room can host multiple clubs during the week.
- A child can be registered for multiple clubs.

### Views
1. **Children registered for specific schedule events**:
   - SQL query joins the `dite`, `prihlaska`, and `rozvrhova_akce` tables.
2. **Which clubs a specific leader leads**:
   - SQL query joins the `vedouci` and `krouzek` tables.
3. **Number of children from a specific city**:
   - Aggregated query on the `dite` table.

### Scenarios
1. Verifying children's registrations for specific events.
2. Testing the assignment of leaders to clubs.
3. Ensuring data consistency when modifying schedules.

## Technologies
- SQL-supported database system.
- Design adheres to the relational model requirements.

## How to Run
1. Import the SQL scripts to create tables and populate data.
2. Execute queries on views or run scenarios to verify functionality.