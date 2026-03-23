# Access Control

The XAUTOMATA platform uses an Access Control List (ACL) model to determine which actions users are allowed to perform within the system.

Permissions are evaluated using a combination of:

* permission scopes associated with the user
* operation types (read, create, update, delete)
* optional ACL override rules applied to specific endpoints
* optional field-level restrictions

These mechanisms together determine whether a user can access, create, modify, or delete resources in the platform.

---

##  Permission Domains

ACL permissions are organized into logical **domains**, which group operations related to different areas of the platform.

The currently defined domains are:

| Domain       | Description                                      |
| ------------ | ------------------------------------------------ |
| **main**     | Core platform entities and general operations    |
| **tracking** | Monitoring and tracking related resources        |
| **admin**    | Administrative features and system configuration |

Each domain defines permissions for standard CRUD operations.

---

##  Operations

Within each domain, the following operations may be granted:

| Operation  | Description                            |
| ---------- | -------------------------------------- |
| **read**   | Allows viewing or retrieving resources |
| **create** | Allows creating new resources          |
| **update** | Allows modifying existing resources    |
| **delete** | Allows removing resources              |

Administrative scopes may also include the special operation:

| Operation | Description                               |
| --------- | ----------------------------------------- |
| **super** | Grants elevated administrative privileges |

Permissions are represented internally as scope strings such as:

```
main.read
tracking.update
admin.delete
admin.super
```

---

##  User Permission Scopes

User permissions are provided through authorization scopes contained in the authentication token issued at login.

These scopes define the base set of permissions available to the user.

Examples:

```
main.read
tracking.read
tracking.update
admin.read
admin.update
```

The platform evaluates permissions by checking whether the required scope is present in the user's authorization token.

---

##  Administrative User Types

The platform distinguishes between different administrative privilege levels.

### Super User

A user with the `admin.super` permission is considered a **Super User** and has full administrative access.

### Super Admin

A Super Admin typically has all CRUD permissions across all domains.

### Tenant Admin

A Tenant Admin has administrative permissions limited to specific tenant-related resources.

This level typically includes the `admin.customer` scope and provides partial administrative capabilities.

---

##  ACL Overrides

ACL Overrides provide an additional layer of permission control.

Overrides define endpoint-specific rules that can alter the default permission behavior derived from user scopes.

Overrides may:

* enable or disable specific operations
* restrict editability of certain fields
* hide fields in forms
* provide automatic default values for fields

Overrides are defined as JSON rules associated with specific resource endpoints.

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
      }
    ]
  }
}
```

In this example:

* object creation and deletion are disabled
* the `name` field cannot be edited

ACL overrides are typically assigned to users through predefined override profiles.

More details are available in the **ACL Overrides** section.

---

##  Field-Level Restrictions

In addition to operation-level permissions, ACL rules may apply restrictions at the field level.

These rules can affect form behavior in the user interface.

Possible restrictions include:

| Restriction  | Effect                                       |
| ------------ | -------------------------------------------- |
| **disabled** | The field is visible but cannot be modified  |
| **hidden**   | The field is not displayed in the interface  |
| **default**  | A default value may be automatically applied |

Field restrictions are applied dynamically when forms are rendered in the interface.

---

##  Permission Evaluation

When the interface needs to determine whether a user can perform an action, the system evaluates permissions in the following order:

1. Check whether an ACL override exists for the target endpoint
2. If an override exists, apply the permissions defined in the override
3. Otherwise evaluate the permission scopes associated with the user

If the required permission is not present, the operation is not allowed.

This mechanism allows the platform to combine global role-based permissions with endpoint-specific restrictions.

---

##  Related Topics

* Users
* ACL Overrides
* Administration
