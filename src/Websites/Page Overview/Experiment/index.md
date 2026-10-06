An [**A/B experiment**](/engage/experiment/experiment-overview/) alternates between two or more HTML/TPL files for visitors and tracks which version performs best. Each visit is randomly assigned to a variant based on the **Frequency** percentage set for that variant. The experiment tracks views and, once a visit is marked as converted, conversions for each variant, allowing you to compare their conversion rates.

<p><img src="../../../images/websites/pages/experiment-3variants.png" alt="A three-variant A/B/C test with a 50/30/20 traffic split" class="border"></p>

!!! Note:
Content being tested cannot be a page itself. It must be an `.html` or `.tpl` file located in your web files, not an `.stml` page.
!!!

While editing a page, find the vertical icon rail on the left edge of the page canvas. Experiment is the last icon, at the bottom.

<p><img src="../../../images/websites/pages/rail-experiment.png" alt="Experiment icon in the component palette"></p>

Drag it onto an empty region of the canvas. This opens **Select Experiment**. Search for an existing experiment and select it to preview its details before choosing it.

<p><img src="../../../images/websites/pages/select-experiment-picker.png" alt="Select Experiment picker with a real experiment selected" class="border"></p>

**Name** | **Description**
:--- | ---
Search experiment | Filter the list by name.
[Add Experiment](#quick-add) | Create a new experiment on the spot if the one you need doesn't exist yet.
Results list | [Experiments](/engage/experiment/experiment-overview/) that already exist for this website.
Preview pane | Selecting an experiment previews its details before you commit.
Choose | Insert the selected experiment at the drop location.

## Quick Add

If nothing in the list fits, click **+ Add Experiment** to create one without leaving the page. It also lets you add variants immediately, so the experiment is usable as soon as you insert it.

<p><img src="../../../images/websites/pages/quickadd-experiment.png" alt="Quick Add Experiment form" class="border"></p>

**Name** | **Description**
:--- | ---
Name | The experiment's internal name. Lowercase, letters/numbers/hyphens only.
Title | The experiment's display title.
Description | An optional description.
Experiment Items | Optionally add variants right away: an Object (file), a Variant name, a Frequency (traffic split percentage), and whether it's Active.
Insert | Creates the experiment and returns you to **Select Experiment** with it selected.