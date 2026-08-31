# Security

Change your password and manage Two-Factor Authentication from one page.

<p><img src="../../images/profile/security.png" alt="Security page"></p>

**Name** | **Description** 
:--- | ---
[API Tokens](/profile/security/api-tokens/) | Add, store, and manage API tokens associated with your account.

## Change Password

**Name** | **Description** 
:--- | ---
Current Password | To change your password, you must first enter your current password for confirmation.
New Password | Enter your new password. 
Confirm New Password | Re-enter your new password for validation. 

!!! Note:
Your password in Solodev must be a minimum of 8 characters long and must contain at least the following:
- one uppercase letter
- one lowercase letter
- one number
- one special character from this approved set: @#$%^&*!=
!!!

Once you've entered your current and new password, click **Submit**.

## Two-Factor Authentication (2FA)

Solodev CMS supports Two-Factor Authentication using a standard authenticator app (any TOTP app -- Google Authenticator, Microsoft Authenticator, Authy, etc.). Enabling it adds a second check beyond your password when you sign in.

### Enable 2FA

1. Click **Enable 2FA**.
2. On the **Set Up Two-Factor Authentication** screen, scan the displayed QR code with your authenticator app, or enter the secret key manually.

<p><img src="../../images/profile/2fa-setup.png" alt="Set Up Two-Factor Authentication screen with QR code and secret key"></p>

3. Enter the 6-digit code from your app and click **Confirm Setup**.

Once enabled, this page shows **Two-Factor Authentication is currently enabled**, and you'll be prompted for a 6-digit code from your authenticator app after your password on future sign-ins.

<p><img src="../../images/profile/security-2fa-enabled.png" alt="Security page with 2FA enabled"></p>

### Disable 2FA

Click **Disable 2FA**. Do this only if you're certain -- while 2FA is off, your account relies on your password alone.

### Losing access to your authenticator app

If you can no longer generate codes (lost phone, deleted app, etc.), you cannot disable 2FA yourself without being able to sign in. Contact a CMS administrator who can access your account to disable 2FA on your behalf, then re-enable it with a new device.

!!! Tip:
Before traveling or replacing your phone, confirm your authenticator app has cloud backup enabled, or note down its recovery/backup codes if it offers them. Solodev's 2FA setup itself does not issue separate backup codes -- your authenticator app is the only source of your codes.
!!!
