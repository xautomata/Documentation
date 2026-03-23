#!/usr/bin/env bash
# ============================================================
# reorganize.sh
# Lanciare da dentro docs/frontend/
# Svuota docs/frontend/, ricrea la struttura, copia i file
# da docs_to_sort/ e poi elimina i sorgenti.
# ============================================================

set -euo pipefail

SRC="../../docs_to_sort"
DEST="."   # = docs/frontend/, da cui gira lo script

# ------------------------------------------------------------
# Sicurezza: verifica che siamo nel posto giusto
# ------------------------------------------------------------
if [[ ! -f "../../mkdocs.yml" ]]; then
  echo "ERRORE: mkdocs.yml non trovato due livelli sopra."
  echo "Assicurati di lanciare lo script da dentro docs/frontend/"
  exit 1
fi

if [[ ! -d "$SRC" ]]; then
  echo "ERRORE: cartella sorgente '$SRC' non trovata."
  exit 1
fi

# ------------------------------------------------------------
# Step 1 — Svuota docs/frontend/ (tranne lo script stesso)
# ------------------------------------------------------------
echo "→ Pulizia docs/frontend/ ..."
find . -mindepth 1 -not -name "reorganize.sh" -delete 2>/dev/null || true

# ------------------------------------------------------------
# Step 2 — Crea la struttura di cartelle
# ------------------------------------------------------------
echo "→ Creazione struttura cartelle ..."

mkdir -p getting_started
mkdir -p concepts
mkdir -p dashboards
mkdir -p widgets
mkdir -p data_manager/customers
mkdir -p data_manager/objects
mkdir -p data_manager/monitoring
mkdir -p cost_management
mkdir -p administration
mkdir -p super_admin
mkdir -p images/widgets

# ------------------------------------------------------------
# Step 3 — Copia immagini
# ------------------------------------------------------------
echo "→ Copia immagini ..."

if [[ -d "$SRC/images" ]]; then
  cp -r "$SRC/images/." "$DEST/images/"
fi

# ------------------------------------------------------------
# Step 4 — Copia e rinomina i file .md
# ------------------------------------------------------------
echo "→ Copia file .md ..."

# Root
cp "$SRC/overview.md"                      "$DEST/index.md"
cp "$SRC/navigation.md"                    "$DEST/navigation.md"

# Getting Started
cp "$SRC/Login.md"                         "$DEST/getting_started/login.md"
cp "$SRC/navigation.md"                    "$DEST/getting_started/navigation.md"

# Concepts
cp "$SRC/system_overview.md"               "$DEST/concepts/system_overview.md"
cp "$SRC/platform_models.md"               "$DEST/concepts/platform_models.md"
cp "$SRC/monitoring_architecture.md"       "$DEST/concepts/monitoring_architecture.md"
cp "$SRC/monitoring_lifecycle.md"          "$DEST/concepts/monitoring_lifecycle.md"
cp "$SRC/metrics_model.md"                 "$DEST/concepts/metrics_model.md"

# Dashboards
cp "$SRC/dashboards_overview.md"           "$DEST/dashboards/index.md"
cp "$SRC/dashboard_management.md"          "$DEST/dashboards/management.md"
cp "$SRC/it_infrastructure.md"             "$DEST/dashboards/it_infrastructure.md"
cp "$SRC/network_dashboard.md"             "$DEST/dashboards/network.md"
cp "$SRC/cloudcost_dashboard.md"           "$DEST/dashboards/cloud_cost.md"

# Widgets
cp "$SRC/widget_overview.md"               "$DEST/widgets/overview.md"
cp "$SRC/widget_it_infrastructure.md"      "$DEST/widgets/it_infrastructure.md"
cp "$SRC/widget_it_analytics.md"           "$DEST/widgets/it_analytics.md"
cp "$SRC/widget_it_anomalies.md"           "$DEST/widgets/it_anomalies.md"
cp "$SRC/widget_network.md"                "$DEST/widgets/network.md"
cp "$SRC/widget_network_analytics.md"      "$DEST/widgets/network_analytics.md"
cp "$SRC/widget_net_flow.md"               "$DEST/widgets/net_flow.md"
cp "$SRC/widget_support_service_kpi.md"    "$DEST/widgets/support_service_kpi.md"
cp "$SRC/widget_cloudcost.md"              "$DEST/widgets/cloud_cost.md"
cp "$SRC/widget_analytical.md"             "$DEST/widgets/analytical_accounting.md"
cp "$SRC/widget_mcd_dedicated.md"          "$DEST/widgets/mcd_dedicated.md"
cp "$SRC/widget_mcd_reboot.md"             "$DEST/widgets/mcd_reboot.md"
cp "$SRC/widget_mcd_rebuild_vm.md"         "$DEST/widgets/mcd_rebuild_vm.md"
cp "$SRC/widget_mcd_downtime.md"           "$DEST/widgets/mcd_downtime.md"

# Data Manager
cp "$SRC/data_manager_overview.md"         "$DEST/data_manager/overview.md"
cp "$SRC/working_with_entities.md"         "$DEST/data_manager/working_with_entities.md"
cp "$SRC/tree_hierarchy_view.md"           "$DEST/data_manager/tree_hierarchy_view.md"
cp "$SRC/customers.md"                     "$DEST/data_manager/customers/customers.md"
cp "$SRC/sites.md"                         "$DEST/data_manager/customers/sites.md"
cp "$SRC/contacts.md"                      "$DEST/data_manager/customers/contacts.md"
cp "$SRC/groups.md"                        "$DEST/data_manager/objects/groups.md"
cp "$SRC/objects.md"                       "$DEST/data_manager/objects/objects.md"
cp "$SRC/metric_types.md"                  "$DEST/data_manager/objects/metric_types.md"
cp "$SRC/metrics.md"                       "$DEST/data_manager/objects/metrics.md"
cp "$SRC/services.md"                      "$DEST/data_manager/objects/services.md"
cp "$SRC/calendars.md"                     "$DEST/data_manager/monitoring/calendars.md"
cp "$SRC/downtimes.md"                     "$DEST/data_manager/monitoring/downtimes.md"
cp "$SRC/dispatchers.md"                   "$DEST/data_manager/monitoring/dispatchers.md"

# Cost Management
cp "$SRC/cost_management_overview.md"      "$DEST/cost_management/overview.md"
cp "$SRC/cloud_cost_registration.md"       "$DEST/cost_management/cloud_cost_registration.md"
cp "$SRC/cost_views.md"                    "$DEST/cost_management/cost_views.md"

# Administration
cp "$SRC/administration_overview.md"       "$DEST/administration/overview.md"
cp "$SRC/access_control.md"                "$DEST/administration/access_control.md"
cp "$SRC/users.md"                         "$DEST/administration/users.md"
cp "$SRC/virtual_domains.md"               "$DEST/administration/virtual_domains.md"
cp "$SRC/probes.md"                        "$DEST/administration/probes.md"
cp "$SRC/probe_types.md"                   "$DEST/administration/probe_types.md"
cp "$SRC/messages.md"                      "$DEST/administration/messages.md"
cp "$SRC/notification_providers.md"        "$DEST/administration/notification_providers.md"
cp "$SRC/notification_provider_types.md"   "$DEST/administration/notification_provider_types.md"

# Super Admin
cp "$SRC/admin_widgets.md"                 "$DEST/super_admin/widgets.md"
cp "$SRC/admin_widget_groups.md"           "$DEST/super_admin/widget_groups.md"
cp "$SRC/admin_dashboards.md"             "$DEST/super_admin/dashboards.md"
cp "$SRC/acl_overrides.md"                "$DEST/super_admin/acl_overrides.md"

# ------------------------------------------------------------
# Step 5 — Elimina i sorgenti in docs_to_sort/
# ------------------------------------------------------------
echo "→ Eliminazione sorgenti in docs_to_sort/ ..."
rm -rf "$SRC"

# ------------------------------------------------------------
# Done
# ------------------------------------------------------------
echo ""
echo "✓ Fatto. Struttura docs/frontend/:"
find . -not -name "reorganize.sh" | sort
