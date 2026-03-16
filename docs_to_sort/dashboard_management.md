# Dashboard Management

Dashboards are the main workspace used to visualize and analyze operational data within XAUTOMATA.

After logging into the platform, users first select a **customer**.
Once a customer is selected, the platform displays the dashboards available for that customer.

Dashboards allow users to assemble visual components called **widgets** into a configurable layout, enabling operational monitoring, analytics, and reporting.

---

# Accessing Dashboards

The dashboard workflow typically follows these steps:

1. The user logs into the platform.
2. The user selects a **customer** from the list of available customers.
3. The platform loads the dashboards available for that customer.

Dashboards are presented in three categories depending on ownership and visibility.

---

# Dashboard Categories

## Personal Dashboards

Personal dashboards are created and owned by the current user.

These dashboards are visible only to the user who created them unless they are explicitly shared with other users or customers.

Users can:

* create new personal dashboards
* edit their dashboards
* share them
* delete them

---

## Shared Dashboards

Shared dashboards are dashboards created by another user and shared with the current user.

When a dashboard is shared:

* the same dashboard instance is visible to all users with access
* changes made to layout or widgets affect the shared dashboard for all users

This means shared dashboards behave as **collaborative dashboards** rather than read-only views.

Some operations, such as deletion, may be restricted for users who are not the dashboard owner.

---

## Global Dashboards

Global dashboards are dashboards defined at platform or organizational level.

They are typically maintained by administrators and provide standardized operational views.

Examples include dashboards for:

* IT Infrastructure
* Network Monitoring
* Cloud Cost Analysis

Global dashboards are usually visible to multiple users within the same organization or customer context.

---

# Creating a Personal Dashboard

Users can create a new personal dashboard from the **Personal Dashboards** section.

The creation dialog allows configuration of basic dashboard properties such as:

* dashboard name
* description
* refresh interval

After creation, the new dashboard appears in the list of personal dashboards and can be opened for editing.

---

# Sharing Dashboards

Personal dashboards can be shared with other users or customers.

The **Share Dashboard** dialog allows two sharing modes:

### Share with Users

The dashboard becomes visible to specific users.

### Share with Customers

The dashboard becomes visible to users associated with a selected customer.

Sharing does not create a copy of the dashboard.
Instead, it grants access to the same dashboard instance.

All users accessing the dashboard will see the same layout and widgets.

---

# Opening a Dashboard

Selecting a dashboard opens the dashboard workspace.

The dashboard page provides several actions:

* add widgets
* edit dashboard settings
* save layout changes
* delete the dashboard

In addition, dashboards may expose shared filters such as:

* customer
* reference month
* date range

These filters can affect multiple widgets simultaneously.

---

# Dashboard Editing Mode

To modify the layout or content of a dashboard, the user enters **editing mode**.

In editing mode the following actions become available:

* add widgets
* reposition widgets
* resize widgets
* configure widget settings
* modify dashboard properties

Changes are saved explicitly using the **Save Changes** action.

---

# Adding Widgets

Widgets can be added to a dashboard using the **Add Widget** action.

This opens the **Widgets Catalog**, a sidebar listing the widgets available to the user.

Widgets are organized into **widget groups** representing functional domains, for example:

* Analytical Accounting
* IT Infrastructure
* Cloud Cost
* Network Analytics

Only widgets belonging to groups enabled for the user are visible in the catalog.

Selecting a widget adds it to the dashboard layout.

---

# Dashboard Layout

Dashboards use a grid-based layout system.

Each widget occupies a rectangular area within the grid and can be moved or resized interactively.

The layout configuration is stored using the following parameters:

* `grid_x` – horizontal grid position
* `grid_y` – vertical grid position
* `width` – widget width in grid units
* `height` – widget height in grid units
* `index` – ordering index within the dashboard

Users can drag widgets to reposition them or resize them directly within the dashboard.

Layout changes are persisted when the user saves the dashboard.

---

# Widget Settings

Some widgets require configuration before displaying data.

If a widget requires configuration, a message indicates that settings must be defined.

Opening the widget settings dialog allows users to configure parameters required by the widget.

Examples of widget settings include:

* selecting a cost view
* selecting metrics or entities
* defining time ranges or filters

The structure of the settings dialog is defined by the widget configuration.

---

# Customer-Specific Settings

Certain widget settings can be marked as **Defined per Customer**.

When this option is enabled:

* each customer can have a different configuration for the same dashboard
* the dashboard layout remains the same
* widget data sources or parameters can vary by customer

This feature is useful in multi-tenant environments where dashboards are reused across multiple customers but reference customer-specific data.

---

# Editing Dashboard Properties

The **Dashboard Settings** action opens the dashboard configuration dialog.

This dialog allows modification of dashboard metadata such as:

* name
* description
* type (personal or global)
* associated user
* refresh interval
* ordering priority
* thumbnail image

These properties correspond to the underlying dashboard entity managed by the platform.

---

# Deleting Dashboards

Users can delete dashboards they own.

Deleting a dashboard removes it from all users who have access to it.

Users accessing a dashboard through sharing may not be able to delete the dashboard itself.

In such cases, removing access typically removes the dashboard from their shared dashboards list without affecting the original dashboard.

---

# Notes on Permissions

Dashboard behavior depends on user permissions and access control rules.

Administrative users may have extended capabilities such as:

* editing global dashboards
* modifying dashboards owned by other users
* managing dashboard visibility

Exact permissions depend on the platform's access control configuration.


---

# Dashboard Architecture

Dashboards dynamically load widgets based on their configuration.
Each widget is an independent component that retrieves and displays its own data.
This design allows dashboards to be extended with new widgets without modifying existing dashboards.