# Data Manager Overview

The **Data Manager** is the central configuration area of the XAUTOMATA platform.

It allows users to define and manage the entities that represent the monitored environment.

These entities form the internal data model used by the platform to build digital representations of real-world systems.

---

## Entity-Based Architecture

The Data Manager is based on an **entity-driven architecture**.

Each entity represents a type of object within the system and can be managed through configurable forms and tables.

Examples of entities include:

- Customers
- Infrastructure Objects
- Services
- Metrics
- Probes

These entities are connected through relationships that reflect real-world structures.

Most entities in the Data Manager follow a common interaction pattern 
based on filtering, tabular results, CRUD dialogs, and entity relationships.

For a detailed explanation of how these interfaces work, see  
[Working with Entities](working_with_entities.md).

---

## Customer Repository

The Customer Repository manages organizational information.

Entities in this area include:

- Customers
- Sites
- Contacts

This information is used to associate infrastructure, services, and dashboards with specific organizations.

---

## Objects Repository

The Objects Repository describes the technical infrastructure being monitored.

Entities include:

- Groups
- Objects
- Services
- Metric Types
- Metrics

These entities allow XAUTOMATA to represent complex infrastructures and services as structured data.

---

## Metrics and Observability

Metrics provide the measurement layer of the platform.

Metrics are collected through **Probes**, which connect XAUTOMATA to monitored systems.

The observability model consists of:

- Probe Types
- Probes
- Metric Types
- Metrics

This structure allows the platform to gather and analyze operational data from many sources.

---

## Operational Tracking

The Tracking section provides tools to manage operational events such as maintenance windows or planned downtimes.

Entities include:

- Calendars
- Downtimes
- Dispatchers

These tools help coordinate operational activities and system interventions.

---

## Relationship with Dashboards

The entities defined in the Data Manager provide the data used by dashboards and widgets.

For example:

- infrastructure objects provide monitoring metrics
- cloud subscriptions provide cost data
- cost views organize billing data for analysis

Without the configuration defined in the Data Manager, dashboards would not have any data to display.