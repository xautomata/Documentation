# Objects

The **Objects** entity represents the individual resources monitored by the XAUTOMATA platform.

Objects correspond to real infrastructure components such as servers, applications, network devices, or service elements.

Each object acts as a monitoring node from which metrics are collected and analyzed.

Objects are typically organized inside **Groups**, which in turn belong to a **Site** and ultimately to a **Customer**.

---

## Object Profiles

Each object is classified using an **Object Profile**, which identifies the operational domain or infrastructure type of the monitored resource.

Examples of object profiles include:

- Host
- Virtual Machine
- Cluster
- Virtual Center
- Resource Pool
- IT Managed Services
- WAN Network
- Cost Management
- Process Flow
- Real Estate / Physical Security

The selected profile helps define how the object is used within the monitoring system and which types of metrics or automation rules may apply.

---

## Entity Interaction Model

Objects follow the standard entity interaction model described in  
[Working with Entities](working_with_entities.md).

This means the interface includes:

- a **pre-filter** used to search objects
- a **table view** displaying matching records
- a **CRUD dialog** for viewing and editing object configuration
- a structure page with **Tree Hierarchy View** and **Connections View**

---

## Pre-filter and Table View

When opening the **Objects** section, users first access the standard filter interface.

Typical fields available for filtering and display include:

- Name
- Description
- IP Address
- Profile
- Status

By default, the table shows **active objects**.

The results are displayed in a table where each row represents a monitored resource.

---

## Object Details (CRUD Dialog)

Selecting an object opens the **CRUD dialog**, which displays the full configuration of the entity.

Typical fields include:

- **Name**
- **Description**
- **IP Address**
- **Profile**
- **Data Profile**
- **Automata Domain**
- **Status**
- **Feedback for Operator**

The **Status** field indicates the operational state of the object and may include values such as:

- Active
- Disabled
- Maintenance

From the CRUD dialog users can:

- edit object information
- duplicate the record
- delete the record

---

## Object Structure View

Selecting the **Link** icon opens the object structure page.

This page allows users to explore the hierarchy descending from the selected object through the **Tree Hierarchy View**.

Objects typically contain:

- **Metric Types**
- **Metrics**

These elements represent the monitoring data associated with the object.

More details are available in [Tree Hierarchy View](tree_hierarchy_view.md).

---

## Object Actions

Objects support several operational actions that can be executed from the table view or the hierarchy view.

Typical actions include:

- **Downtimes** – temporarily suspend monitoring alerts for the object
- **Dispatchers** – configure automated actions triggered by monitoring events

The interface also supports **massive operations** on multiple selected objects, including:

- **Massive Downtime**
- **Massive Dispatcher**

These actions allow administrators to apply operational controls to multiple resources at once.

---

## Connections View

From the object structure page, users can switch to the **Connections View**.

Objects can be connected to several other entities in the platform, including:

- **Groups**
- **Probes**
- **Metric Types**
- **Downtimes**
- **Dispatchers**

These connections define how the object participates in monitoring and automation workflows.

For example:

- a **probe** collects monitoring data from the object
- **metric types** define which measurements are available
- **downtimes** suspend alerts for maintenance
- **dispatchers** trigger automated responses

---

## Role of Objects in the Platform

Objects are the central monitoring entities in XAUTOMATA.

They represent the actual infrastructure resources from which monitoring data is collected.

Objects connect the **structural model of the infrastructure** with the **monitoring and automation capabilities** of the platform.

Through objects, the platform can:

- collect metrics
- detect anomalies
- trigger automated actions
- visualize operational data through dashboards and widgets