# ACL Overrides

ACL Overrides define predefined access control configurations that can be applied to users to modify the default permission model of the platform.

An ACL override specifies custom permission rules that override or restrict the standard Access Control List (ACL) assigned to a user. These rules can affect access to entities, operations (read, create, update, delete), and individual fields.

ACL Overrides are typically used by administrators to enforce specific security policies or restrict user capabilities for particular contexts.

---

## Access

ACL Overrides are available in the **Super Admin** section of the platform.

Navigation path:

```
Super Admin → ACL Overrides
```

This section is restricted to users with administrative privileges.

The interface displays a list of all defined override profiles.

Each entry represents a reusable permission configuration that can be assigned to one or more users.

---

## ACL Override List

The ACL Overrides page presents a table containing all defined override profiles.

Main column:

| Field | Description                                   |
| ----- | --------------------------------------------- |
| Code  | Unique identifier of the ACL override profile |

The Code identifies the override configuration and is used when associating it with users.

Users can open an override profile to view its configuration and related users.

---

## ACL Override Details

Opening an ACL override shows the detail view of the profile.

The detail panel includes the following elements:

| Field          | Description                                          |
| -------------- | ---------------------------------------------------- |
| Code           | Unique identifier of the ACL override profile        |
| Override Rules | JSON configuration defining the permission overrides |

The **Override Rules** field contains the actual permission configuration and is displayed through a JSON viewer.

---

## Override Rules

Override rules define the permissions applied by the override profile.

Rules are expressed as a JSON structure where each key represents a target resource or domain, and the associated configuration specifies the permissions granted or restricted.

Example:

```json
{
  "/objects/": {
    "acl": {
      "read": true,
      "create": false,
      "delete": false,
      "update": true
    },
    "fields": [
      {
        "key": "name",
        "editable": false
      },
      {
        "key": "description",
        "editable": false
      }
    ]
  }
}
```

In this example:

* access to the **objects** domain is allowed for reading and updating
* creation and deletion operations are disabled
* specific fields are marked as not editable

Field-level restrictions allow administrators to prevent modification of particular properties even when update permissions are granted.

---

## Users Association

Each ACL override can be associated with users.

The detail view includes a **Users** tab displaying the list of users currently assigned to the override profile.

This relationship allows administrators to apply the same permission configuration to multiple users without redefining permissions individually.

---

## Typical Use Cases

ACL overrides may be used to:

* restrict modification of specific entities
* disable certain operations for particular user groups
* enforce read-only access to selected resources
* limit the editability of sensitive fields

Because overrides are reusable profiles, they simplify the management of consistent permission policies across multiple users.

---

## Observed Behavior

Based on the current implementation of the interface:

* override rules are edited and displayed as JSON structures
* the configuration can include both operation-level and field-level restrictions
* users can be associated with an override profile through the related users section

The effective interaction between user ACL configuration and ACL overrides is part of the platform's overall access control model.

---

## Related Topics

* Users
* Access Control Model
