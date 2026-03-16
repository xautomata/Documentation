# Working with Entities

Most sections of the **Data Manager** follow a common interaction model used to manage platform entities such as Sites, Contacts, Groups, Objects, and others.

This model provides a consistent workflow for searching, viewing, and managing records.

## Entity Navigation Flow

When selecting an entity from the navigation menu, the interface follows this sequence:

1. **Pre-filter**
2. **Results Table**
3. **CRUD Dialog**
4. **Connections View**

This pattern is shared across most entities in the platform.

---

## Pre-filter

When opening an entity section (for example **Sites**), the system first displays a **pre-filter dialog**.

The pre-filter allows the user to define the criteria used to retrieve records.

Typical filter fields include:

- Code
- Description
- Status
- Customer
- Location information (city, ZIP, country)

After clicking **Apply**, the system loads the matching records.

---

## Results Table

The results are displayed in a **table view**.

Each row represents a single entity record.

The table usually supports:

- sorting
- filtering
- pagination
- expandable fields

---

## CRUD Dialog

Each row includes a **search icon (🔍)** that opens the **CRUD dialog**.

The dialog allows the user to:

- view record details
- edit the record
- duplicate the record
- delete the record

The dialog displays all fields associated with the entity.

---

## Entity Relationships

Each row also includes a **Link icon (🔗)**.

This icon opens the **Connections View**, where the relationships between entities can be explored.

Entities in XAUTOMATA can be connected to other entities depending on their role in the system.

These relationships depend on the entity type. For example:

- **Customers** can be connected to Contacts, Users, Dashboards, Services, and Sites.
- **Sites** can be connected to Contacts and Groups.
- **Contacts** can be connected to Customers and Sites.

The available relationship types and actions depend on the entity configuration.

---

This shared interaction model ensures that all entity management operations follow a consistent user experience across the platform.