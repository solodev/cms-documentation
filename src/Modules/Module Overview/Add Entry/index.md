# Add Entry

Add a new row of content to a module. From the module's overview page, click **Add Entry**.

<p><img src="../../../../images/modules/module-add-entry.png" alt="Add Entry form for a Blog module"></p>

The fields shown depend on the module's own schema (defined when it was [added](/modules/add-module/) or later edited in [Modify](/modules/module-overview/modify/)) -- the form above is for a Blog-type module, so it has Body/Hero Image/Summary/Title columns. A few fields are always present regardless of schema:

**Name** | **Description**
:--- | ---
Name | The entry's internal name.
Schedule -- Start/Stop | For a [schedulable (calendar-style) module](/modules/add-module/#calendar-vs-datatable-modules), the date range this entry is active. A datatable-style module skips this section entirely.
Status | Draft or Publish. Draft entries aren't shown on the front end.
*(schema fields)* | One field per column defined in the module's schema -- Body, Hero Image, Summary, and Title in the example above.
Permissions -- Allowed Users/Groups | Optionally restrict who can edit this specific entry.
Submit | Click **Submit** to save the entry.

!!! Note:
On some modules, **Add Entry** may not appear in the toolbar even though the module itself has entries and [Import](/modules/module-overview/import/)/[Export](/modules/module-overview/export/) still work -- this looks like a permissions edge case tied to how the module was created rather than anything schema-related. If you hit it, check the module's Permissions, or use [Import](/modules/module-overview/import/) with a single-row CSV as a workaround.
!!!
