# Login Process

The **Login** process in Xautomata allows users to authenticate with the platform securely. This document explains the workflow, key components, and associated API calls involved in the login process, alongside error handling and session management.

## Overview

The login process involves:
1. User credential submission (username and password).
2. API authentication request to validate credentials.
3. Token management, including storage of access and refresh tokens for session persistence.

## Workflow

1. **Credential Input**: 
   - Users enter their username and password in the `LoginView.vue` component. This data is managed by Vue’s reactivity system and is validated before submission.

2. **API Authentication Call**: 
   - The login request is handled by the `authenticate` method in `authStore` (defined in `src/authentication/stores/auth.ts`). It constructs an authentication payload using the credentials and an option for session persistence.
   - API call is made via `Api.authenticate` function (defined in `Api.ts` within `src/services`). This function sends a `POST` request to the server's OAuth endpoint to verify credentials.

3. [**Token and Session Handling**](../../project-structure/tokens.md):
   - If successful, the response includes an `access_token` and additional session data (e.g., `expires_in`, `token_type`), which are saved in the `authStore`.
   - The `userStore` initializes user data post-authentication by calling `initStore`, which fetches user-specific information like profile data and notifications.

   [Read more](../../project-structure/tokens.md)

4. **Redirect on Success**:
   - After a successful login, the application redirects the user to the main dashboard (`CustomersHomePage`), defined within the Vue Router configuration in `routes.ts`.

## Key Components and Files

- **LoginView.vue**: The UI component for the login page, which includes fields for entering credentials and buttons for submitting the form.
- **authStore (auth.ts)**: Manages the login state, including token storage and API interaction for authentication.
- **Api.ts**: Defines the `authenticate` function, which communicates with the server’s OAuth endpoint to validate credentials.
- **routes.ts**: Configures route redirection after successful login.

## API Details

- **Endpoint**: `/oauth2/login_access_token`
- **Method**: `POST`
- **Request Payload**:

```json
{
  "username": "<user_username>",
  "password": "<user_password>",
  "value_refresh_token": "<session|remember_me>"
}

```

- **Response**:
  - `access_token`: JWT used for authenticated requests.
  - `expires_in`: Duration for which the token is valid.
  - `token_type`: Type of token (typically `Bearer`).

## Error Handling

- **Invalid Credentials**: If the credentials are incorrect, an error message is displayed in `LoginView.vue`, prompting the user to re-enter their details.
- **Network Issues**: Any connectivity issues are logged, and a user-friendly message is displayed.
- **Session Expiration**: If the session expires, users are prompted to re-authenticate.

## Code References

- **`src/authentication/views/LoginView.vue`**: User interface and event handling for login.
- **`src/authentication/stores/auth.ts`**: Token management and API calls for login.
- **`src/services/Api.ts`**: Defines the API call to the authentication endpoint.

## Example

An example login function using `authStore`:


```typescript
import { useAuthStore } from '@/authentication/stores/auth'

const authStore = useAuthStore()

async function login() {
  try {
    await authStore.authenticate(username, password, isRemember)
    // Redirect to homepage on success
    router.push({ name: 'CustomersHomePage' })
  } catch (error) {
    console.error('Login failed:', error)
    // Display error message to the user
  }
}

```