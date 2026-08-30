# Workflow

An org-wide automation engine: a Workflow rule watches for one of three trigger types (a file changing state, a task being completed, or a form being submitted) and takes an action -- send an email, assign a task -- when it fires, optionally only when a condition matches.

<p><img src="../../../images/admin/workflow/workflow-list.png" alt="Workflow list with real rules"></p>

**Name** | **Description**
:--- | ---
[Add Workflow](/admin/settings/workflow/add-workflow/) | Create a new workflow rule.
[Workflow Overview](/admin/settings/workflow/workflow-overview/) | Click a rule's name to manage it -- edit its condition, or delete it.

!!! Note:
Workflow rules scoped to a specific form or module can also be created and managed from that object's own page -- see [Form Overview's Workflow](/forms/form-overview/workflow/) for the Form Submission case. Both entry points manage the exact same underlying rules; this page just isn't filtered to one object.
!!!
