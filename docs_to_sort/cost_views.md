# Cost Views

A **Cost View** is a customizable hierarchical structure used to organize and classify cloud costs.

Cloud providers typically deliver **raw billing data** that reflects the technical structure of the infrastructure (subscriptions, resource groups, locations, and resources).  
These structures rarely match the internal organizational or accounting structure used by a company.

Cost Views allow users to reorganize these costs according to their own business model.

Through Cost Views, users can:

- create a **tree structure** of cost nodes
- group cloud resources according to business categories
- assign resources to nodes within the hierarchy
- analyze costs using a customized organizational model

Because organizations often analyze costs from different perspectives, a single customer may define **multiple Cost Views**.

For example, costs can be organized by:

- department
- project
- application
- service
- cost center

## Resource Assignment

Cloud billing data imported from providers is not automatically organized according to business structures.

Instead, resources are **manually associated** with nodes within a Cost View.  
This allows each organization to define its own accounting structure independently from the provider’s billing model.

## Relationship with Widgets

Cost Views are used by the **Analytical Accounting widgets**, which display cost data according to the selected structure.

When configuring an Analytical Accounting widget for the first time, the user must select which **Cost View** the widget should reference.

These widgets analyze costs according to the hierarchy defined in the Cost View.

In contrast, **Cloud Cost widgets** display the imported billing data directly, without applying the Cost View structure.