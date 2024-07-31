---
date created: "Monday, July 1st 2024, 9:03:01 am"
date modified: "Wednesday, July 31st 2024, 9:31:34 am"
share: false
---

> \[!warning\]
> At the end of the day, the best note-taking software is the one you will actually use.

## Plugins

Here are all the plugins I have accumulated and kept enabled as of 2024-07-31. Not all of them are important.

- ==Advanced Tables==
- Better Word Count
- BRAT
- ==Calendar==
- ==Clear Unused Images==
- Comments
- ==Copilot==
- <mark style="background: #FF5582A6;">Dataview</mark>
- Dictionary
- ==Editor Width Slider==
- ==Enhancing Export==
- ==Excalidraw==
- Export Settings
- ==Footnote Shortcut==
- Google Photos
- ==Highlightr==
- Homepage
- ==Kanban==
- Kindle Highlights
- <mark style="background: #FF5582A6;">Linter</mark>
- <mark style="background: #FF5582A6;">MAKE.md</mark>
- Mermaid Tools
- <mark style="background: #FF5582A6;">Meta Bind</mark>
- Note Refactor
- ==Pandoc Plugin==
- <mark style="background: #FF5582A6;">Periodic Notes</mark>
- <mark style="background: #FF5582A6;">QuickAdd</mark>
- ==QuickSwitcher++==
- ==Regex Find/Replace==
- <mark style="background: #FF5582A6;">Reminder</mark>
- RescueTime
- ==Show Current File Path==
- Style Settings
- ==Table of Contents==
- <mark style="background: #FF5582A6;">Tasks</mark>
- <mark style="background: #FF5582A6;">Templater</mark>
- ==TimeStamper==
- ==Tracker==
- Waypoint

Important plugins are highlighted in ==yellow==. Plugins that I could not do without are highlighted in <mark style="background: #FF5582A6;">red</mark>. I use all of these plugins, but I figured it would be useful to prioritize some over others. Here are some extra notes about the *most* important

## MAKE.md

This plugin is probably my most important plugin, and that's almost solely due to the Spaces feature, which allow you to create "modular" workspaces. You can create and "pin" folders to your "Space," created additional "Spaces," and have a custom view depending on your context. If you create a folder, it's the same as a real folder, but you can also "pin" a folder from elsewhere which acts as a symlink. You can close spaces non-destructively as well. You can pin workspaces to the top ribbon to create a whole new space-space.
![300](Spaces System.excalidraw "wikilink")
1. This is the default Space (meta-Space?). This is the Space you start out with and can add Spaces to.
2. This pinned Space is for my job. This is how I keep work and personal notes separate; I have a Space for my personal notes (which is my base Space), and then I have a Space for my job. These files and folders are all stored separately within my default file tree, which I basically never use unless it's to tweak my custom templates (which I don't store within Spaces because that messes with their folder location, which makes it hard for Obsidian to use them).
3. This is just an example of a pinned space. This is my "Home Space," where all my personal Spaces live (like I said before, you can think of Spaces as folders that can also be symlinked).
4. Here are other Spaces that I pinned to the same root level as my Home Space. As you'll notice, some of these Spaces are also inside of my Home Space. These are symlinked Spaces that are at the root level for my convenience. I can close these Spaces at any time without deleting any of their files. Note that "closing" is a different menu option than "deleting;" "deleting" will definitely destroy those files.

## Linter

This plugin basically enforces a single formatting standard across all of your files (except for the folders you explicitly exclude). Go ahead and screwball around with the settings. I will also attach my settings json file which you can adopt by simply pasting it into `vault-dir/.obsidian/plugins/obsidian-linter/data.json` but obviously ymmv, and you would definitely have a different set of folders you would want to exclude (good folders to exclude would be wherever you store your custom templates and Excalidraw files).

## Dataview

Basically just SQL but for your files. You can dynamically query files and data within those files by creating Dataview code blocks and filtering for certain files. You can see this in action in my daily notes template.

## Tasks

This plugin is (I think) an extension of a core plugin that comes pre-packaged with Obsidian, but basically it gives you more advanced options for setting tasks.

## Templater

Templater is a far more advanced version of the Templates core plugin that comes pre-packed with Obsidian. It has it's own syntax that you can use to run commands within your template. You can configure Templater to always create a note of a predefined template within certain folders, making workflows more convenient. One setting that I would encourage you to turn on is "Trigger Templater on new file creation." This makes it more convenient when creating a note using a template to render the Templater code within that template on new file creation, so you don't have to do it manually. This is especially convenient for daily notes.

## Periodic Notes

This note fully replaces the core Daily Notes plugin. Make sure you set it up to use the right "Daily Note" plugin and to create new Daily Notes in the right directory. The "Format" I use is as follows: `YYYY/MM-MMMM/YYYY-MM-DD-dddd`. This automatically creates directories for the year, month, and also formats the title of your note.

## Reminder

This plugin is in my daily work log template, it basically just prompts you at the time at which you set a reminder. In my work log, the reminder is set to go off at 4:45pm every day you create a daily note to remind the user to write an End-of-Day report.

## QuickAdd

**QuickAdd** lets you bind macros to certain actions. I have an action (bound to hotkey `Cmd+Shift+K`) that adds a time-stamped log entry under the heading "**\## Log**," so that I can quickly add entries to my work logs:

<figure>
<img
src="Personal%20Obsidian%20System%20Workflow-media/032c1ae999b2c4fa2589e15ec0aaec8ef8784d7f.png"
title="wikilink" alt="700" />
<figcaption aria-hidden="true">700</figcaption>
</figure>

Okay, that's it. I also bundled some templates for you that I use.

- **Work Daily Log**
  - This is my most-used log. This template is in a constant state of development.
- **Task Template**
  - This is the template I use to host my "projects" or "tasks." Any sort of assignment that's discrete enough to warrant its own log. This is the template for which I created the QuickAdd macro from before, but I also use the QuickAdd macro for my daily work log too.
- **Meeting Notes**
  - I have a meeting notes folder in my work space that is set up to automatically use strictly the Meeting Notes template, which prompts you (if you have Templater set up to automatically render templates) about the purpose of the meeting. It's just a way for me to keep meeting notes, but I have been using it less now that I am going to more-and-more meetings.

Okay here's what i have for work
![IMG_6828.png](Personal%20Obsidian%20System%20Workflow-media/2fdbfb8b255e57130ce8dabf2b823b8e426ab394.png "wikilink")
