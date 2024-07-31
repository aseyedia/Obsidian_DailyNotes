# Personal Obsidian Workflow Overview

> \[!warning\]
> At the end of the day, the best note-taking software is the one you will actually use.

- [Personal Obsidian Workflow Overview](#personal-obsidian-workflow-overview)
  * [Plugins](#plugins)
    + [Plugin List](#plugin-list)
      - [MAKE.md](#makemd)
      - [Linter](#linter)
      - [Dataview](#dataview)
      - [Tasks](#tasks)
      - [Templater](#templater)
      - [Periodic Notes](#periodic-notes)
      - [Reminder](#reminder)
      - [QuickAdd](#quickadd)
  * [Templates](#templates)
    + [Work Daily Log](#work-daily-log)
    + [Task Template](#task-template)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>

## Plugins

Here are all the plugins I have accumulated and kept enabled as of 2024-07-31. Not all of them are important. You can search for all of these in the Community Plugins store in Obsidian.

- 🟨 Important plugins
- 🟥 Essential plugins (cannot do without)

### Plugin List

- 🟨 Advanced Tables
- Better Word Count
- BRAT
- 🟨 Callout Manager
- 🟨 Calendar
- 🟨 Clear Unused Images
- Comments
- 🟨 Copilot
- 🟥 Dataview
- Dictionary
- 🟨 Editor Width Slider
- 🟨 Enhancing Export
- 🟨 Excalidraw
- Export Settings
- 🟨 Footnote Shortcut
- Google Photos
- 🟨 Highlightr
- Homepage
- 🟨 Kanban
- Kindle Highlights
- 🟥 Linter
- 🟥 MAKE.md
- Mermaid Tools
- 🟥 Meta Bind
- Note Refactor
- 🟨 Pandoc Plugin
- 🟥 Periodic Notes
- 🟥 QuickAdd
- 🟨 QuickSwitcher++
- 🟨 Regex Find/Replace
- 🟥 Reminder
- RescueTime
- 🟨 Show Current File Path
- Style Settings
- 🟨 Table of Contents
- 🟥 Tasks
- 🟥 Templater
- 🟨 TimeStamper
- 🟨 Tracker
- Waypoint

---

#### MAKE.md

This plugin is probably my most important plugin, and that's almost solely due to the Spaces feature, which allow you to create modular workspaces. You can create and "pin" folders to your Space, create additional Spaces, and have a custom view depending on your context. If you create a folder, it's the same as a real folder, but you can also pin a folder from elsewhere like a shortcut. You can close spaces non-destructively as well. You can pin Waypoints to the top ribbon to create a whole new workspace.

![Personal Workspace](Personal%20Obsidian%20System%20Workflow-media/Pasted%20image%2020240731102433.png "wikilink")

1. This is the default Waypoint. This is the workspace you start out with and can add Spaces to.
2. This pinned Space is for work. This is how I keep work and personal notes separate; I have a Space for my personal notes (which is my base Space), and then I have a Space for my job. These files and folders are all stored separately within my default file tree, which I basically never use unless it's to tweak my custom templates (which I don't store within Spaces because that messes with their folder location, which makes it hard for Obsidian to use them).
3. This is just an example of a pinned space. This is my "Work Space," where all my work-related Spaces live (like I said before, you can think of Spaces as both folders and shortcuts).
4. Here are other Spaces that I pinned to the same root level as my work Space. As you'll notice, some of these Spaces are also inside of my work Space. These are symlinked Spaces that are at the root level for my convenience. I can close these Spaces at any time without deleting any of their files. Note that "closing" is a different menu option than "deleting;" "deleting" will definitely destroy those files.

#### Linter

This plugin basically enforces a single formatting standard across all of your files (except for the folders you explicitly exclude). Go ahead and screwball around with the settings. I will also attach my settings json file which you can adopt by simply pasting it into `[vault-dir]/.obsidian/plugins/obsidian-linter/data.json` but obviously ymmv, and you would definitely have a different set of folders you would want to exclude. Good folders to exclude would be wherever you store your **custom templates** and **Excalidraw files** - **these files will get destroyed by the linter if you don't**.

#### Dataview

Basically just SQL but for your files. You can dynamically query files and data within those files by creating Dataview code blocks and filtering for certain files. You can see this in action in the daily notes template.

#### Tasks

A plugin that gives you more advanced options for setting tasks (checkboxes `- [ ]`).

#### Templater

Templater is a far more advanced version of the Templates core plugin that comes pre-packed with Obsidian. It has its own syntax that you can use to run commands within your template. You can configure Templater to always create a note of a predefined template within certain folders, making workflows more convenient. One setting that I would encourage you to turn on is "**Trigger Templater on new file creation**." This makes it more convenient when creating a note using a template to render the Templater code within that template on new file creation, so you don't have to do it manually. This is especially convenient for daily notes.

#### Periodic Notes

This note fully replaces the core Daily Notes plugin. Make sure you set it up to use the right "Daily Note" plugin and to create new Daily Notes in the right directory. The "Format" I use is as follows: `YYYY/MM-MMMM/YYYY-MM-DD-dddd`. This automatically creates directories for the year, month, and also formats the title of your note.

#### Reminder

This plugin is in my daily work log template, it basically just prompts you at the time at which you set a reminder. In my work log, the reminder is set to go off at 4:45pm every day you create a daily note to remind the user to write an End-of-Day report.

#### QuickAdd

**QuickAdd** lets you bind macros to certain actions. I have an action (bound to hotkey `Cmd+Shift+K`) that adds a time-stamped log entry under the heading "**\## Log**," so that I can quickly add entries to my work logs:

<figure>
<img
src="Personal%20Obsidian%20System%20Workflow-media/032c1ae999b2c4fa2589e15ec0aaec8ef8784d7f.png"
title="wikilink" alt="700" />
</figure>


## Templates

### Work Daily Log

This is my most-used log and is also in a constant state of development. Within it, you will notice a large block of JavaScript code. What I find helpful for me is to fill out an "End of Day Review" at the end of everyday, which Obsidian prompts me to complete at 4:45pm (requires Reminders plugin). The following day, it gives me a sense of continuity to view the previous day's End of Day Review. However, I don't do a daily note everyday, and sometimes I'll do a daily note where the previous day was another month. This JavaScript code handles these cases.

You will need to go through this template and change file paths that are particular to me (e.g. `CHOP PEDSnet Team`, the Task Tracker and its Tasks, `filePath` in my JavaScript block, the Dataview queries, etc).

If all of this seems super complicated, just bear in mind that I generated much of this code using LLMs, and you can too.

### Task Template

This is the template I use to host my projects or tasks; Any sort of assignment that's discrete yet large enough to warrant its own log. This is the template for which I created the QuickAdd macro from before, but I also use the QuickAdd macro for my daily work log too. This is where I discovered my passion for [Callouts](https://help.obsidian.md/Editing+and+formatting/Callouts) and [Task querying](https://publish.obsidian.md/tasks/Queries/About+Queries).

------------------------------------------------------------------------

This guide, as well as whole Obsidian workflow system and my templates, are all under constant development and are subject to change tomorrow, but for now, I hope this guide serves as a source of inspiration to build out your own Obsidian workflow and system. YouTube, the Obsidian Forums, and random people's blogs are all also good sources of inspiration, and I encourage you to poke around and learn more on your own.

All the best,
Arta
