## Installation on Kubernetes
- **XAutomata UI configuration**
  - Create a new object, e.g., "az-kubernetes.xautomata.com"
  - Create a probe of type "agent"
  - Create a probe named "kube-az-agent" (include the configmap in the `data_profile`)
- **Install `redpanda-console` via Helm chart** and update the values to point to the environment's Kafka instance
- **K8s Configuration**
  - Create the Kafka topic `log.probe.<uuid_probe>` to ingest logs from the probe "kube-az-agent" (using `redpanda-console`)
  - Install the agent using the file `xautomata-agent-k8s.yaml` from the project sources, replacing the placeholder `<probe_uuid>` with the UUID of the probe "kube-az-agent"
