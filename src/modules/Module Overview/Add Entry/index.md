# Add Entry

Add a new row of content to a module. From the module's overview page, click **Add Entry**.

<p><img src="../../../images/modules/module-add-entry.png" alt="Add Entry form for a Blog module"></p>

The fields shown depend on the module's own schema (defined when it was [added](/modules/add-module/) or later edited in [Modify](/modules/module-overview/modify/)) -- the form above is for a Blog-type module, so it has Body/Hero Image/Summary/Title columns. A few fields are always present, but which ones depends on whether the module is [schedulable (calendar-style) or not (datatable-style)](/modules/add-module/#calendar-vs-datatable-modules):

**Name** | **Description**
:--- | ---
Name | Calendar-style modules only. A universal, built-in field every entry has, separate from the schema. Datatable-style modules have no equivalent built-in field -- if you want one schema column to act as each entry's display name, designate it yourself via **Field Name to use in URL** in [Modify's Advanced Options](/modules/module-overview/modify/#advanced-options).
Schedule -- Start/Stop | Calendar-style modules only. The date range this entry is active.
Status | Draft or Publish. Draft entries aren't shown on the front end.
*(schema fields)* | One field per column defined in the module's schema -- Body, Hero Image, Summary, and Title in the example above.
Permissions -- Allowed Users/Groups | Optionally restrict who can edit this specific entry.
Submit | Click **Submit** to save the entry.

!!! Note:
On some modules, **Add Entry** may not appear in the toolbar even though the module itself has entries and [Import](/modules/module-overview/import/)/[Export](/modules/module-overview/export/) still work -- this looks like a permissions edge case tied to how the module was created rather than anything schema-related. If you hit it, check the module's Permissions, or use [Import](/modules/module-overview/import/) with a single-row CSV as a workaround.
!!!
