# Azure AD Configuration: SSO + RBAC Integration

This guide documents the manual configuration of an Azure AD Enterprise Application to enable SSO and role-based access control (RBAC) for a Linux-based web server deployed in Azure. This aligns with IAM and Zero Trust design principles.

## ✅ Step 1: Register Enterprise Application in Azure AD
1. Go to Azure Portal → Azure Active Directory → Enterprise Applications
2. Click + New Application
3. Choose Create your own application
4. Name it something like: AzureSSODemoApp
5. Select Integrate any other application you don’t find in the gallery (Non-gallery)

## ✅ Step 2: Configure SSO (SAML or OIDC)
1. Under the application, go to Single sign-on
2. Choose SAML or OIDC (OpenID Connect)
3. Set up:
   - Reply URL: http://<your-public-ip>
   - Identifier (Entity ID): your app URL or Azure resource URI
   - Sign-on URL: optional

## ✅ Step 3: Add Users & Groups
1. Go to Users and groups
2. Click + Add user/group
3. Select a test user and assign default or custom roles

## ✅ Step 4: Define Role Claims (Optional)
1. Go to Token Configuration
2. Click + Add Optional Claim
3. Choose ID token type and add: roles, groups
4. Assign app roles in the App manifest if needed

## ✅ Step 5: Confirm Access
1. Visit: http://<your-public-ip>
2. Authenticate via Azure AD
3. Verify role/group-based access

## 🔐 IAM Concepts Demonstrated
| Control | Description |
|--------|-------------|
| SSO    | Azure AD authentication against web app |
| RBAC   | Access controlled by roles via Entra ID |
| Federation | Identity assertions via SAML or OIDC |
| Zero Trust | Identity-based access control |
