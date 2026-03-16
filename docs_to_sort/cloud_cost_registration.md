# Cloud Cost Registration

The **Cloud Cost Registration** section allows administrators to configure the connections between XAUTOMATA and the supported cloud providers.

These configurations enable the platform to retrieve billing and cost data directly from the provider APIs.

Currently supported providers include:

- Azure CSP
- Azure
- AWS
- Google Cloud

For each provider, users must register the required credentials or tokens that allow XAUTOMATA to securely access the billing information.

Once configured, the platform periodically queries the cloud provider APIs and imports the available billing data into the system.

The imported data represents the **raw cost information** provided by the cloud vendors.  
This data is then processed and made available for analysis within the platform.

The imported cost data can be explored through:

- **Cloud Cost dashboards**
- **Cloud Cost widgets**
- **Analytical Accounting widgets**

Cloud Cost widgets analyze the imported billing data directly, while Analytical Accounting widgets use **Cost Views** to reorganize the data according to the company’s accounting structure.