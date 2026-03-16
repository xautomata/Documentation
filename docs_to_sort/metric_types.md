# Metric Types

The **Metric Types** entity defines the types of measurements collected from monitored objects.

A metric type represents a specific monitoring dimension associated with an infrastructure resource.

Examples of metric types include measurements such as:

- CPU utilization
- network latency
- service availability
- traffic volume

Each metric type defines the structure and meaning of the monitoring data collected from an object.

---

## Relationship with Objects

Metric Types are always associated with a specific **Object**.

An object may have multiple metric types, each representing a different measurement dimension.

For example, a server object may include metric types such as:

- CPU usage
- memory usage
- disk activity
- network traffic

This structure allows the platform to organize monitoring data in a clear and consistent way.

---

## Entity Interaction Model

Metric Types follow the standard entity interaction model described in  
[Working with Entities](working_with_entities.md).

The interface includes:

- a **pre-filter** for searching metric types
- a **table view** displaying the results
- a **CRUD dialog** for editing the metric type configuration
- a structure page with **Tree Hierarchy View** and **Connections View**

---

## Pre-filter and Table View

When opening the **Metric Types** section, users first access the filter interface.

Typical fields available for filtering and display include:

- Name
- Description
- Profile
- Object
- Status

By default, the table displays **active metric types**.

---

## Metric Type Details (CRUD Dialog)

Selecting a metric type opens the **CRUD dialog**, which shows the full configuration of the entity.

Typical fields include:

- **Name**
- **Description**
- **Profile**
- **Object**
- **Data Profile**
- **Automata Domain**
- **Status**
- **Feedback for Operator**

From this dialog users can:

- edit the configuration
- duplicate the record
- delete the record

---

## Metric Type Structure View

Selecting the **Link** icon opens the metric type structure page.

This page allows users to explore the hierarchy descending from the selected metric type through the **Tree Hierarchy View**.

Metric Types contain:

- **Metrics**

Metrics represent the actual monitoring data collected over time.

More information is available in [Tree Hierarchy View](tree_hierarchy_view.md).

---

## Metric Type Actions

Metric Types support operational actions that allow administrators to control monitoring behavior.

These actions include:

- **Downtimes** – temporarily suspend monitoring alerts
- **Dispatchers** – configure automated responses to monitoring events

The interface also supports **massive operations** applied to multiple metric types:

- **Massive Downtime**
- **Massive Dispatcher**

---

## Connections View

From the metric type structure page, users can switch to the **Connections View**.

Metric Types can be connected to:

- **Downtimes**
- **Dispatchers**
- **Metrics**

These relationships define how monitoring data is collected and how the platform reacts to operational conditions.

---

## Role of Metric Types in the Platform

Metric Types define the structure of monitoring data collected from infrastructure resources.

They act as the bridge between:

- **Objects**, which represent monitored resources
- **Metrics**, which represent the time-series data collected from those resources

By defining metric types, the platform can organize monitoring data and apply operational logic such as alerts, automation rules, and analytics.