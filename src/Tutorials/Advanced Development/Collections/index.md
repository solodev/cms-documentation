# Collections

A Collection ties a Datatable category group to a page template and generates a public detail page for every category in that group automatically, instead of an administrator building a category detail page by hand for each one.

## When to Use a Collection

Use a Collection when a Datatable's categories should each get their own public landing/detail page with a consistent layout &mdash; for example, one page per department, per park, or per program area, all sharing the same design but pulling in that category's own entries.

## Creating a Collection

1. Go to the folder where the Collection should live and add a new Collection.
2. Fill in:
   - **Name** &mdash; the internal name.
   - **Title** &mdash; the display title.
   - **Description** &mdash; a brief description of what the Collection is for.
   - **Website Properties > Page Template** &mdash; the template used to render each generated category page. Use Browse to select it.
3. Enable **Generate category detail URLs** if the Collection should automatically create a public URL for each category in the group.
4. Save.

## How It Behaves

- The Page Template controls the layout for every generated category page &mdash; changing it changes every page the Collection generates, the same way a Datatable's display template controls every entry's detail page.
- Generated URLs follow from the category group's structure. Don't hand-edit a generated category stub; if the URL pattern needs to change, change the Collection or category group configuration instead.
- A Collection is a structural/admin object, not routine content. Creating or reconfiguring one is administrator work, the same as changing a module's templates.

!!! Note
If a generated category page looks wrong, check the Collection's Page Template first &mdash; it's a shared layout, so a fix there applies to every category the Collection covers.
!!!
