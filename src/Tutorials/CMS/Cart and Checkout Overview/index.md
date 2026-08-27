# Cart and Checkout Overview

Solodev CMS includes a native shopping cart and checkout system for selling products or services directly from a website, built on the **Inventory** module and the **Payment** module family.

!!! Note
This is a substantial, structural capability — setting it up (connecting a payment processor, configuring shipping and tax, building the storefront pages) is administrator/developer work, not routine content editing. This page is a map of the pieces, not a full setup walkthrough.
!!!

## The Pieces

- **Inventory** — the sellable items. An Inventory entry is a product or plan: its price, description, images, and any variant/feature options.
- **Shopping Cart** — the frontend cart session. Visitors add Inventory entries to a cart, which persists across their storefront session.
- **Checkout** — the guided flow a customer completes to purchase: login/guest checkout, billing and shipping details, coupon application, tax and shipping calculation, and payment.
- **Payment** — processes the transaction (`Payment_Process`) and manages the resulting records: `Payment_Invoice`, `Payment_Customer`, `Payment_Detail`.
- **Coupon** — discount codes that can be applied at checkout.
- **Shipping** — configurable shipping methods, including flat-rate and table-based (rate-by-region) options.
- **Tax** — tax rules applied during checkout.

## Checkout Flow

The checkout flow, in order, is:

1. **Shopping Cart** — the customer reviews items and quantities.
2. **Checkout Login** — the customer signs in or continues as a guest.
3. **Billing/Shipping** — the customer enters billing and shipping information.
4. **Coupon** (optional) — the customer applies a discount code, if any.
5. **Shipping and Tax** — calculated based on the destination and configured rules.
6. **Checkout Confirm** — the customer reviews the full order before paying.
7. **Payment** — the transaction is processed and a **Payment Receipt** is generated.

Administrators can review completed transactions under **Payments**, and export payment or shipping-table data when needed.

## Security Notes for Administrators

- Checkout pages carry CSRF protection; if you are customizing checkout templates, don't strip the hidden CSRF fields the templates already include.
- Payment credentials (processor keys/secrets) belong in the CMS's provider/settings configuration, never hardcoded into a page or template.
- Test coupon, shipping, and tax logic with a real test order before relying on it for a live sale — these three interact, and a rule that looks correct in isolation can produce an unexpected total once combined.

!!! Note
A full Inventory module setup guide (creating sellable entries, variants, and pricing) is not yet published. If your team is building out a storefront, work with your Solodev engineer on Inventory configuration in the meantime.
!!!
