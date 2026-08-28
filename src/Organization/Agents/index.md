# Agents

Agents are AI workspaces that can carry out CMS tasks &mdash; through chat threads and automated runs &mdash; against your Solodev deployment. Each Agent workspace is a separate, configured assistant with its own settings, mapping, and connection details.

## Creating an Agent Workspace

1. Go to Organization > Agents and add a new one.
2. Configure its settings, then set up:
   - **Studio settings** &mdash; the agent's core configuration.
   - **Mapping** &mdash; what the agent is allowed to act on.
   - **MCP settings** &mdash; its Model Context Protocol connection, if it automates through MCP.

## Working with an Agent

- **Threads** hold an ongoing conversation with the agent; you can follow up in a thread or create a task directly from it.
- **Runs** are a discrete, trackable execution of the agent against a task. A run can be viewed, canceled while in progress, or rolled back after it completes.
- A remote agent (hosted outside this CMS, connected through a provider setting) opens through its own workspace view rather than a local one.

!!! Note
Agents act with real CMS permissions through the same authorization rules as a signed-in user &mdash; there's no separate, looser access level for automation. Review a run's changes the same way you'd review any other administrative change, and use rollback if a run needs to be undone.
!!!
