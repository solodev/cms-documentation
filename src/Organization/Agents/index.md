# Agents

Agents are AI workspaces that can carry out CMS tasks &mdash; through chat threads and automated runs &mdash; against your Solodev deployment. Each Agent workspace is a separate, configured assistant with its own settings, mapping, and connection details.

**Name** | **Description**
:--- | ---
[Add Agent](/organization/agents/add-agent/) | Create a new Agent.
[Agent Studio](/organization/agents/agent-studio/) | Configure the agent's identity, model, and behavior.
[Edit Mapping](/organization/agents/edit-mapping/) | Set which website and URL paths the agent is scoped to.
[MCP Settings](/organization/agents/mcp-settings/) | Turn on Solodev CMS tools for the agent over MCP.
[Add Agent Run](/organization/agents/add-agent-run/) | Start, view, cancel, or roll back a run.
[Delete](/organization/agents/delete/) | Permanently remove an Agent.

!!! Note
Agents act with real CMS permissions through the same authorization rules as a signed-in user &mdash; there's no separate, looser access level for automation. Review a run's changes the same way you'd review any other administrative change, and use rollback if a run needs to be undone.
!!!
