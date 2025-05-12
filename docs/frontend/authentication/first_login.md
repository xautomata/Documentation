# First Login

This page provides an overview of the **First Login** process in the Xautomata platform. During the first login, new users are guided through additional steps, such as associating with a customer account, accepting terms and conditions, and possibly creating a new customer if they are administrators.

## Overview

The first login involves the following key steps:
1. **User Login**: The user provides credentials, triggering authentication.
2. **Customer Association**: New users are prompted to associate with an existing customer or create a new one.
3. **Terms and Conditions**: Users must accept the latest terms and conditions.
4. **Dashboard Redirection**: Once setup is complete, users are redirected to their dashboard.

## Process Details

### 1. User Login

The user starts by providing their credentials. The login information is handled by `authStore` and the `authenticate` function.

<details>

```typescript
async function loginByCredentials(): Promise<void> {
  isLoading.value = true
  authError.value = null

  try {
    await authStore.authenticate(
      username.value,
      password.value,
      isRemember.value
    )
    await userStore.initStore()
    router.push({ name: 'CustomersHomePage' })
  } catch (err) {
    handleLoginError(err)
  } finally {
    isLoading.value = false
  }
}
```
</details>

### 2. Customer Association

After logging in, users without a customer association are prompted to either **join an existing customer** or **create a new customer**.

<details>

```typescript
async function createNewCustomer(): Promise<void> {
  isLoading.value = true
  try {
    await Api.registerNewCustomer(customer.value)
    await afterCreatingCustomer()
    goToDashboards()
  } catch (err) {
    console.error(err)
  } finally {
    isLoading.value = false
  }
}
```
</details>

### 3. Terms and Conditions

During the first login, users may be required to accept the platform’s terms and conditions. This is handled in the user store, prompting the user to accept the latest terms before proceeding.
<details>

```typescript
// Code snippet from user store handling terms and conditions acceptance

async function loadCurrentUser(): Promise<void> {
  const currentUser = await Api.loadCurrentUser()

  if (currentUser.profile === 'sign_tc') {
    const onAccept = async (version: number) => {
      const signOptions = { isAccepted: true, version }
      await Api.signTermsAndConditions(signOptions)
    }
    uiStore.openDialog({
      component: shallowRef(TermsAndConditionsDialog),
      props: { isRefuseEnabled: true, onAccept }
    })
  }

  user.value = currentUser
}

```
</details>

### 4. Dashboard Redirection

Once the first login process is complete, users are redirected to the main dashboard.

<details>

```typescript
function goToDashboards(): void {
  setTimeout(() => {
    router.push({ name: 'CustomersHomePage' })
  }, 3000)
}

```
</details>

At this point, the first login process concludes with a redirect to the user’s main dashboard. 

With these steps complete, the first login process ensures that new users are set up with customer association and have accepted terms and conditions before accessing the platform's main features.
