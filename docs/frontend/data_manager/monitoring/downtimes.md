# Downtimes

Downtimes are used to temporarily suspend monitoring alerts for selected infrastructure elements.

They are typically scheduled during maintenance windows, upgrades, or other planned activities where alerts would not be meaningful.

---

## Purpose

During a downtime period:

- monitoring continues to collect data
- alerts and incident notifications are suppressed

This prevents unnecessary alert noise during planned operations.

---

## Where Downtimes Can Be Applied

Downtimes can be applied at different levels of the infrastructure hierarchy, including:

- Sites
- Groups
- Objects

When applied at a higher level, the downtime typically affects all descendant elements in the hierarchy.

This allows administrators to silence alerts for entire sections of the infrastructure.

---

## Managing Downtimes

Downtimes can be managed through the **Downtime button** available in the Tree Hierarchy View.

Selecting the button opens the **Active Downtimes** modal, where users can:

- view active downtimes
- create new downtimes
- edit scheduled downtimes
- remove existing downtimes

---

## Typical Use Cases

Common scenarios where downtimes are used include:

- infrastructure maintenance
- scheduled upgrades
- network reconfiguration
- planned service interruptions