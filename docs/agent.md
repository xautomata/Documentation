## Installation on kubernetes
- XAutomata UI configuration
	- Create a new object eg. "az-kubernetes.xautomata.com"
	- Creazione probe type "agent"
	- Creazione probe  "kube-az-agent" (riportare configmap nel data_profile)
- Installare redpanda-console via chart helm e sostituire i values per puntare a kafka dell'ambiente
- Configurazione k8s
	- Creazione topic log.probe.<uuid_probe> kafka per ingest dei log della probe "kube-az-agent" (redpanda-console)
	- Installazione agent usando file xautomata-agent-k8s.yaml nei sorgenti del progetto andando a sostituire il placeholder <probe_uuid> con l'uuid della probe "kube-az-agent"
