# Groups

The **Groups** entity represents logical infrastructure collections associated with a site.

Groups are used to organize monitored resources into functional or operational units, making it easier to structure infrastructure hierarchies and apply monitoring operations to related elements.

A group may contain both:

- **child groups**
- **objects**

This allows XAUTOMATA to represent complex infrastructures through a hierarchical structure.

---

## Group Types

Each group is classified by a **Type**, which identifies the operational domain it belongs to.

Available group types include:

- **Cost Management**
- **IT Managed Services**
- **WAN Network**
- **Real Estate Info**
- **Physical Security**

This classification helps organize different areas of the infrastructure according to their purpose.

---

## Entity Interaction Model

Groups follow the standard entity interaction model described in  
[Working with Entities](working_with_entities.md).

This means that the interface includes:

- a **pre-filter** used to search for records
- a **table view** displaying the matching groups
- a **CRUD dialog** for viewing and editing group details
- a structure page with **Tree Hierarchy View** and **Connections View**

---

## Pre-filter and Table View

When opening the **Groups** section, users first access the standard filter interface.

Typical fields available for filtering and display include:

- Name
- Description
- Type
- Site
- Virtual Domain
- Status

By default, the table shows only **active** groups.

The results are displayed in a table, where each row represents a single group.

---

## Group Details (CRUD Dialog)

Selecting a group opens the **CRUD dialog**, which displays the full configuration of the entity.

Typical fields include:

- **Name**
- **Description**
- **Type**
- **Automata Domain**
- **Site**
- **Virtual Domain**
- **Group Parent**
- **Status**

From this dialog users can:

- edit the group information
- duplicate the record
- delete the record

The **Group Parent** field allows groups to be organized hierarchically.

---

## Group Structure View

Selecting the **Link** icon opens the group structure page.

This page allows users to explore the hierarchy descending from the selected group through the **Tree Hierarchy View**.

A group may contain:

- child groups
- objects

This allows the platform to represent nested infrastructure structures.

More information is available in [Tree Hierarchy View](tree_hierarchy_view.md).

---

## Group Actions in the Hierarchy

Within the Tree Hierarchy View, groups support operational actions such as:

- **Downtimes**
- **Dispatchers**
- opening the structure page of child entities
- opening the CRUD dialog of child entities

Groups also support **massive operations** on selected elements, including:

- **Massive Downtime**
- **Massive Dispatcher**

These actions allow administrators to apply operational controls to multiple groups at once.

---

## Connections View

From the group structure page, users can switch to the **Connections View**.

Groups can be connected to:

- **Objects**
- **Users**
- **Downtimes**
- **Dispatchers**
- **Groups** (child groups)

These connections allow groups to act as operational hubs in the infrastructure model.

For example:

- objects can be assigned to a group
- users can be linked to a group
- downtimes and dispatchers can be associated with a group
- child groups can be created within a parent group

---

## Role of Groups in the Platform

Groups are one of the core organizational entities of XAUTOMATA.

They are used to:

- structure monitored infrastructure
- organize objects into logical units
- apply monitoring operations to collections of resources
- navigate infrastructure hierarchies
- associate operational rules such as downtimes and dispatchers

By combining structural hierarchy and operational relationships, groups provide a flexible way to model real infrastructures within the platform.