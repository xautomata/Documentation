# Contacts

The **Contacts** entity stores personal and organizational contact information associated with customers and sites.

Contacts represent individuals who may be responsible for operational, administrative, or technical aspects of the monitored infrastructure.

Typical examples include:

- technical contacts
- service managers
- support representatives
- administrative contacts

---

## Contact Information

Each contact record contains personal and organizational information, such as:

- name and surname
- qualification or role
- company and department
- primary and secondary email addresses
- mobile and phone numbers
- optional notes

This information allows administrators to maintain a centralized directory of people associated with monitored infrastructures.

---

## Managing Contacts

Contacts are managed through the standard entity workflow described in **Working with Entities**.

Users can:

- search contacts using the pre-filter interface
- view results in the table view
- open the **CRUD dialog** to create, edit, duplicate, or delete records

---

## Contact Relationships

Contacts can be associated with other entities in the platform.

These relationships are managed through the **Connections View**.

A contact can be linked to:

- **Customers**
- **Sites**

These links define the organizational context in which the contact operates.

For example:

- a contact may represent the technical manager of a customer
- a contact may be responsible for a specific site
- a contact may act as a service or escalation contact

When creating a relationship, users can also specify the **type of relationship**, which describes the role of the contact for the selected entity.

---

## Connections View

The **Connections View** allows users to:

- view entities linked to the selected contact
- create new relationships
- modify existing relationships
- remove links when they are no longer relevant

This mechanism allows the platform to associate people with the infrastructure and services they are responsible for.