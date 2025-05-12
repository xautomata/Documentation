# Terms and Conditions

This page outlines the **Terms and Conditions** acceptance process in Xautomata. During the first login, users may be prompted to review and accept the platform's terms and conditions. This acceptance is mandatory for account activation.

## Overview

The Terms and Conditions process includes the following steps:
1. **Prompt Display**: Upon login, if the terms have not been accepted, the user is prompted to review them.
2. **Acceptance Handling**: Users can accept or decline the terms.
3. **Account Activation**: Once accepted, the user's account is fully activated.

## Process Details

### 1. Prompt Display

When a new user logs in, the system checks if the latest terms have been accepted. If not, a dialog prompt with the terms is displayed, requiring user action before proceeding.
<details>
<summary>Click to view `loadCurrentUser` method for terms acceptance check</summary>

```typescript
// Code snippet from user store checking terms acceptance

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

### 2. Acceptance Handling

The dialog allows users to either accept or decline the terms. The `onAccept` function processes acceptance, storing the decision.


<details>
<summary>Click to view `signTermsAndConditions` method</summary>

```typescript
// Code snippet from Api.ts handling terms acceptance submission

async function signTermsAndConditions(
  options: SignTermsAndConditionsOptions
): Promise<void> {
  const data = {
    tc_version: options.version,
    accepted: options.isAccepted
  }

  await client.user_approved_or_declined_tc_login_current_user_terms_and_conditions_post(
    {},
    data
  )
}
```

</details>

### 3. Account Activation

Once terms are accepted, the account is activated, allowing users to access the platform's main features.

This completes the Terms and Conditions process, ensuring all users have acknowledged the platform’s legal guidelines before accessing the system.
