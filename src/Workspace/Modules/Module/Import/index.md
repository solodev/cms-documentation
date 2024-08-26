Import entries by preparing the file in .CSV format. To leave the database empty, mark the option "Empty DB."

## Prerequisites 

-	Have a preexisting <a href="/workspace/modules/module">module</a>.

## Import Entries

1. Go to the specific module that you intend to import.

2. To import the entire table associated with the selected module, click the **"Import"** option.

<p><img src="/static/images/modules/import/module-import.jpg" alt="Import Module" style="width: 60%;"></p>

3. Upload `.csv` file.

<p><img src="/static/images/modules/import/module-import-form.jpg" alt="Import Module Form" style="width: 40%;"></p>

**Name** | **Description** 
:--- | ---
Browse | Select the `.csv` file you want to import.
Empty DB | Select this option if you want to empty the current database.
Submit | Click **Submit** button to proceed.

!!!Note:
If you want new entries, make sure **not to** include the `calendar_entry_id` column in your `.csv`. If your module already contains entries, ensure that the `ids` in your `.csv` file match the existing ones in the module.
!!!

## Update Entries

To update the entries on your module, add the `calendar_entry_id` column or make sure this column exists. 

!!!warning Important:
Make sure the `ids` from the `csv` file match those on the module. If they don't, it could unintentionally update the wrong entries.
!!!