# Reset Password

This page details the **Reset Password** process in Xautomata. This process allows users to reset their password if they have forgotten it or need to update it. The reset password flow includes requesting a reset email and validating the reset link before entering a new password.

## Overview

The reset password process involves these main steps:
1. **Request Reset**: The user requests a password reset, typically by entering their username or email.
2. **Verification**: The user receives a verification link and follows it to confirm their identity.
3. **Password Update**: After verification, the user can set a new password to regain access.

## Process Details

### 1. Request Reset

The reset process begins when the user provides their username or email to request a password reset. This request triggers a call to the API to send an email with a verification code.


<details>
<summary>Click to view `ResetPasswordView.vue` code snippet for reset request</summary>

```typescript
async function requestResetPassword(): Promise<void> {
  isLoading.value = true

  try {
    await Api.requestResetPassword(profile.value.userName)
    goToLogin()
  } catch (err) {
    console.error(err)
  } finally {
    isLoading.value = false
  }
}
```

</details>

### 2. Verification

After requesting a password reset, the user receives an email with a verification code. The code is passed as a query parameter when the user follows the email link. This code is used to verify the user's identity.


<details>
<summary>Click to view code snippet for verification handling</summary>

```typescript

const code = route.query.verification_code as string

async function resetPassword(): Promise<void> {
  isLoading.value = true

  try {
    await Api.resetPassword({
      verification_code: code,
      new_password: changePassword.value.password
    })
    goToLogin()
  } catch (err) {
    console.error(err)
  } finally {
    isLoading.value = false
  }
}
```

</details>

### 3. Password Update

Once verification is successful, the user can enter and confirm a new password. This final step completes the reset process and allows the user to log in with their updated password.


<details>
<summary>Click to view password update snippet</summary>

```typescript

const changePasswordFields = ref<Array<FieldOptions>>([  {    key: 'password',    type: FieldType.Password,    placeholder: 'Password',    validations: [      required,      lowerRequired,      upperRequired,      numberRequired,      specialSymbolRequired,      whiteSpacesNotAllowed,      minLength(8)    ]
  },
  {
    key: 'passwordConfirm',
    type: FieldType.Password,
    placeholder: 'Confirm password',
    validations: [sameAs(passwordComputed)]
  }
])
```

</details>

This concludes the reset password process. By following these steps, users can securely reset their password and regain access to the platform.
