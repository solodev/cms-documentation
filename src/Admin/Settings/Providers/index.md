# Providers

Providers connect the CMS to outside services &mdash; Git hosts, SSO, marketing/contact platforms, AI runtimes, accessibility scanners, and similar integrations. They live under Admin > Settings > Providers.

## Connecting a Provider

1. Go to Admin > Settings > Providers and choose one from **Available Providers**.
2. Add a setting for it and fill in what it asks for &mdash; this varies by provider, and ranges from an API key/token to a full OAuth connection.
3. Once connected, it appears under **Connected Providers**, and other parts of the CMS that depend on it (Segments imports, MCP tokens, Git hosting, SSO login, and so on) can use it.

## Managing a Connection

- A provider setting's secret fields (tokens, keys) can be copied but are not displayed in full once saved.
- Removing a provider setting disconnects anything using it &mdash; check what depends on a connection before deleting it.
- Some providers authenticate through OAuth and will redirect out to that service and back; others are configured directly with a key or token.

!!! Note
Individual provider setup (which fields a specific provider needs, and how to obtain its credentials) isn't documented here yet &mdash; each one needs its own page written against a real, working connection rather than guessed from configuration. If you're setting one up, work with your Solodev engineer.
!!!
