# Cost Management Overview

The **Cost Management** area of XAUTOMATA provides tools to import, organize, and analyze cloud cost data.

This area is designed to support both operational cloud cost monitoring and customer-defined analytical accounting models.

## Cost Management Workflow

The cost management process is based on three main steps:

1. **Cloud Cost Registration**  
   Cloud provider accounts are registered in the platform so that billing data can be retrieved.

2. **Raw Cost Data Import**  
   The platform imports raw billing data from the configured providers.

3. **Cost Organization and Analysis**  
   Imported resources can be manually organized through **Cost Views** and then analyzed through dashboards and widgets.

## Cloud Cost Registration

The **Cloud Cost Registration** section allows administrators to configure access to supported cloud providers, such as:

- Azure CSP
- Azure
- AWS
- Google Cloud

These configurations enable XAUTOMATA to retrieve cloud billing data directly from provider APIs.

## Raw Billing Data

Cloud providers typically return billing data in a technical, provider-oriented structure.

This raw data may include information such as:

- subscriptions
- resource groups
- locations
- resource identifiers
- categories
- costs

Although useful for technical analysis, this structure does not necessarily match the customer’s internal organizational model.

## Cost Views

To support analytical accounting, XAUTOMATA provides **Cost Views**.

A Cost View is a customer-defined structure used to manually organize cloud resources according to business or accounting criteria.

This allows customers to transform raw provider billing data into a structured model that reflects their own needs.

For example, costs can be organized by:

- department
- project
- service
- cost center

## Cost Analysis

Once the cloud cost data has been imported and organized, it can be analyzed through two different perspectives:

- **Cloud Cost widgets**  
  Focused on direct analysis of imported cost data, trends, breakdowns, forecasts, and anomalies.

- **Analytical Accounting widgets**  
  Focused on customer-defined cost structures created through Cost Views.

Together, these tools provide both operational visibility and accounting-oriented cost analysis.