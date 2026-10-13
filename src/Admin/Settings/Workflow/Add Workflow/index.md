From [Workflow](/admin/settings/workflow/), click **Add Workflow**. The fields shown depend on which **Type** you pick.

<p><img src="../../../../images/admin/workflow/add-workflow-top.png" alt="Add Workflow: Name and Type" class="border"></p>

**Name** | **Description**
:--- | ---
Name | The workflow's internal name. Lowercase, letters/numbers/hyphens only.
Type | What triggers the rule &mdash; see below.

## File triggers: Saved, Staged, Published

Fires when a file changes state.

<p><img src="../../../../images/admin/workflow/add-workflow-file-type.png" alt="Add Workflow with a File-type trigger selected" class="border"></p>

**Name** | **Description**
:--- | ---
Completed by user | Optionally restrict the trigger to when the action was performed by specific user(s). Leave empty to match any user.
Assign to user | Optionally assign a follow-up task to a user when the rule fires.

## Task triggers: Completed by user, Completed by user from group

Fires when a task is marked complete, either by a specific user or by any member of a group.

<p><img src="../../../../images/admin/workflow/add-workflow-task-type.png" alt="Add Workflow with a Task-type trigger selected" class="border"></p>

**Name** | **Description**
:--- | ---
Completed by user | Optionally restrict the trigger to when the action was performed by specific user(s). Leave empty to match any user.
Assign to user | Optionally assign a follow-up task to a user when the rule fires.

## Form Submission

Fires when a form is submitted &mdash; optionally only when a submitted field matches a value. See [Form Overview's Workflow](/forms/form-overview/workflow/) for the full walkthrough with a real example, including its Emails/Email Subject/condition-builder fields, since opening Add Workflow from a form pre-fills this Type and scopes the rule to that form.

<p><img src="../../../../images/admin/workflow/add-workflow-form-submission.png" alt="Add Workflow with a form submission type selected" class="border" style="max-width: 60%;"></p>

**Name** | **Description**
:--- | ---
Choose form (or Choose Datable / Choose Module, depending on Type) | Which object this rule is scoped to.
Variables | Raw JSON &mdash; the notification details (for example, `{"email":"...","subject":"..."}`). Edited automatically by the friendly form when you build a rule normally; edit directly here for advanced changes.
If Statement | Raw JSON &mdash; the condition, if any (for example, `[{"urgency":"High"}]`). An empty `[]` means the rule always fires.
Then Statement | The action that runs when the If Statement matches. Most workflows fill this in automatically: assign a task, start an agent review, or publish the file. The value `email` sends a notification to the email address and subject set in Vars.
