The CMS checks content for accessibility and spelling before it goes live. Results show in an **Accessibility** panel in the editor's right sidebar. You can also set the CMS to stop a save, stage, or publish until the problems are fixed.

There are three kinds of check:

| Check | What it checks | Where it appears |
| --- | --- | --- |
| **WCAG audit** (axe-core) | HTML markup against WCAG 2.x A/AA rules | HTML files, STML pages, Calendar entries |
| **Spelling & grammar** (LanguageTool) | The visible text in the content | Same places as the WCAG audit |
| **PDF/UA-1 validation** (veraPDF) | How a PDF is structured and tagged | PDF files |

All checks run on the hosted **OpenADA** service. Nothing runs on your CMS server.

---

## Setup

Accessibility is set up under **Admin → Providers**. If no accessibility provider is connected, the Accessibility panel shows a "connect the provider" message, and the `Accessibility_Scan` object is left out of the API and MCP.

### 1. Accessibility (axe-core)

This connection is required for WCAG audits and PDF checks.

**Settings:**

| Setting | Description |
| --- | --- |
| `[WCAG Conformance Level]` | **(Required)** The standard to check against: WCAG 2.0 A + AA, WCAG 2.1 A + AA (the default and recommended choice), or WCAG 2.2 A + AA. |
| `[Block Save, Stage, and Publish]` | **(Optional)** Stops Save, Stage, and Publish while there are blocking issues. |
| `[Block At Impact Level]` | **(Optional)** The lowest severity that blocks: `Critical Only`, `Serious or Higher`, `Moderate or Higher`, `Minor or Higher` (the default), or `Do Not Block on axe Issues`. Issues below this level still appear in the panel. |
| `[LanguageTool Connection]` | **(Optional)** The LanguageTool connection to use for spelling checks. If you leave it blank, the CMS uses the default active LanguageTool connection. |
| `[OpenADA base URL]` | **(Optional)** Defaults to `https://openada.us`. |
| `[OpenADA API key]` | **(Optional)** Needed only when your OpenADA deployment requires authentication. |
| `[Keep checks private]` | **(Optional)** On by default. Keeps CMS checks out of the public OpenADA directory. |

### 2. LanguageTool (optional)

Adds spelling and grammar checks next to the WCAG audit. It has the same OpenADA fields (base URL, API key, private) plus:

| Setting | Description |
| --- | --- |
| `[Block Save, Stage, and Publish]` | **(Optional)** Stops saving while there are blocking spelling or grammar issues. |
| `[Block At Issue Type]` | **(Optional)** `Misspellings Only`, `Grammar and Misspellings`, `Style, Grammar, and Misspellings` (the default), or `Do Not Block on LanguageTool Issues`. |

!!!
LanguageTool works on its own. If only LanguageTool is connected, the Accessibility panel still appears and shows only the **Spelling & Grammar** section.
!!!

### 3. Adobe PDF Services (optional)

Turns on the **Remediate PDF** button for PDFs. In the Adobe Developer Console, create a project, add the PDF Services API with **OAuth Server-to-Server** credentials, and then enter the **Client ID** and **Client Secret** here.

---

## HTML files, STML pages, and Calendar entries

### When checks run

When you open the editor, the panel shows the most recent **verified** scan for the current version of the content.

A new scan runs whenever you click **Save**, **Stage**, or **Publish**:

1. The CMS scans the content as it is in the editor, including unsaved changes.
2. The WCAG audit and the spelling check both run.
3. If blocking is on and blocking issues are found, the save stops and a warning appears in the panel.
4. If the content passes, the scan is saved and attached to the save request. Once the save succeeds, that scan is marked **verified** for the saved version.

What gets scanned depends on the editor:

| Editor | Scan mode | What gets scanned |
| --- | --- | --- |
| STML page | `page` | The complete rendered page in the preview frame |
| HTML file | `partial` | The file's content as a fragment |
| Calendar entry | `partial` | The entry's content form |

!!!
In `partial` mode, rules that only make sense for a complete page are skipped. A content fragment isn't flagged for a missing `<title>`, `lang` attribute, main landmark, skip link, `h1`, viewport meta, and so on.
!!!

`.tpl` files have no Accessibility panel because they mix code with markup.

### ADA Score

The panel shows a score from 0 to 100. Each violation takes points off 100, based on how serious it is:

| Impact | Points deducted |
| --- | --- |
| Critical | 10 |
| Serious | 7 |
| Moderate | 4 |
| Minor | 1 |

| Score | Color |
| --- | --- |
| 90–100 | Green |
| 70–89 | Yellow |
| Below 70 | Red |

Under the score, you'll see:

- A count of violations by impact level.
- A list of violations. Click one to scroll to and highlight the affected element in the editor or preview.
- A **Spelling & Grammar** section, if LanguageTool is connected.

### Save blocking

When blocking is turned on, the warning reads:

> **3 accessibility issues and 1 spelling/grammar issue found.**
> Save, Stage, and Publish are disabled until all ADA and spelling issues are resolved.

Only issues at or above the configured threshold count toward blocking. If a check can't finish, for example because OpenADA is unreachable, saving is also blocked until it can.

---

## PDF files

PDFs have no HTML for a WCAG audit to read. Instead, they're validated against **PDF/UA-1**, the ISO standard for accessible PDFs.

### When checks run

- **On upload or replace:** the PDF is checked immediately.
- **When you open the file:** the panel loads first, shows *Checking… large PDFs can take up to a minute*, and then shows the result.
- Results are saved for each file **version**. Opening an unchanged PDF again reuses the saved result instead of checking again.

PDFs up to **10 MB** can be checked.

### Results

| Field | Description |
| --- | --- |
| Status | **PDF/UA-1 Compliant** or **PDF/UA-1 Not Compliant** |
| Counts | The number of checks that passed and failed |
| Failures | Up to 15 failed clauses, each with a description |
| Copy | Copies a plain-text summary you can paste into Slack or a ticket |

### Remediate PDF

The **Remediate PDF** button appears when all of these are true:

- Adobe PDF Services is connected.
- The PDF has already been checked.
- You have Modify (Editor or Admin) permission on the file.

When you click it:

1. The PDF is sent to Adobe's **Autotag PDF** service to add accessibility tags. Large PDFs are split into parts automatically and put back together afterward.
2. The tagged file is saved as a **new staged draft version**. The published file isn't changed.
3. The PDF is checked again, and the page reloads to show the new result.
4. Review the draft, then use **Publish** to make it live.

!!!warning
Remediating a large file can take several minutes. Keep the page open until it reloads.
!!!

---

## Scan history

Every scan is saved as an `Accessibility_Scan` record with:

| Field | Description |
| --- | --- |
| `asset_file_id` / `entry_id` | The file or Calendar entry that was scanned |
| `version` | The content version that was scanned |
| `score` | The ADA score, or the share of checks passed for a PDF |
| `violations_count` / `violations` | WCAG violations, or PDF/UA failures |
| `spelling_errors` / `spelling_issues` | LanguageTool results |
| `wcag_tags` | The standard used, such as `wcag2a,wcag2aa,wcag21a,wcag21aa`, or `ua1` for PDFs |
| `scan_mode` | `page`, `partial`, or `pdf` |
| `is_verified`, `verified_at`, `verified_by` | Set when the scan is attached to a successful save |
| `scanned_at`, `scanned_by` | When the scan ran and who ran it |

A new record is written only when the results change. Scanning the same content again reuses the existing record.
