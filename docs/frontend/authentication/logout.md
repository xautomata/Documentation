# Logout Process

The **Logout** process in Xautomata is designed to securely end a user’s session, ensuring that all active tokens are invalidated and the user is logged out of the application. This document outlines the logout workflow, key components, and session cleanup steps.

## Overview

The logout process includes:
1. Invalidating the access token on the server.
2. Clearing stored session data and tokens.
3. Redirecting the user to the login page.

## Workflow

1. **Trigger Logout Action**:
   - The logout process is triggered by calling the `logout` function in the `authStore` (defined in `src/authentication/stores/auth.ts`).
   
2. **Token Invalidations**:
   - If the user has an active push notification token, it is invalidated first by calling `Api.invalidatePushToken`.
   - The primary session token is then invalidated via `Api.invalidateToken`, which clears the user’s server session and prevents unauthorized access using the token.

3. **Session Data Reset**:
   - After invalidating tokens, `authStore` calls `resetStore` to clear all session-related data, including user information and tokens.

4. **Redirection**:
   - Upon successful logout, the application redirects the user to the login page.

## Key Components and Files

- **authStore (auth.ts)**: Manages the logout function and session state clearing.
- **Api.ts**: Defines the `invalidateToken` and `invalidatePushToken` functions, which handle server requests to clear active tokens.
- **LoginView.vue**: The user is redirected to this component after logout.

## API Details

- **Endpoint**: `/login/refresh/invalidate`
- **Method**: `POST`
- **Purpose**: Clears the current user session on the server and invalidates the access token.

## Example Code

Here is an example of the logout function defined in `authStore`:


```typescript
import { useAuthStore } from '@/authentication/stores/auth'
import { useApi } from '@/common/composables/Services'

const authStore = useAuthStore()
const { Api } = useApi()

async function logout() {
  try {
    if (authStore.token.value.access_token) {
      // Invalidate push token if present
      if (appStore.pushToken) {
        await Api.invalidatePushToken(appStore.pushToken)
      }
      // Invalidate main session token
      await Api.invalidateToken()
    }
  } catch (error) {
    console.error('Logout failed:', error)
  } finally {
    // Reset session data
    authStore.resetStore()
  }
}
```


## Error Handling

- **Token Invalidation Failure**: If token invalidation fails, an error is logged but the session data is still cleared to ensure no sensitive information is retained.
- **Network Issues**: In case of network issues, the user’s local session is cleared, though the server-side token may remain active until it expires.

## Code References

- **`src/authentication/stores/auth.ts`**: Contains the `logout` and `resetStore` functions.
- **`src/services/Api.ts`**: Defines functions for invalidating tokens.

This document covers the logout process, clarifying the steps to ensure session security when a user logs out.
