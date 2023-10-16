# Obsidian Daily Log Template

## Introduction

This repo is contains the Daily Log template that I use every day with the Obsidian plug in, [Periodic Notes](https://github.com/liamcain/obsidian-periodic-notes). For those of you totally new to Obsidian and need a place to start, I suggest starting with [this](https://www.youtube.com/watch?v=DbsAQSIKQXk) video, which was my first introduction to Obsidian and what sparked my interest and kind of made me obsessed with this app after only about a month. 

This daily log was born out of a desire to have a centralized note-taking/writing system to keep track of my days and encourage myself to undertake even small daily habits (a la [Atomic Habits](https://jamesclear.com/atomic-habits-summary)) during my period of extended unemployment. This undertaking was partially inspired by [this post](https://dannb.org/blog/2022/obsidian-daily-note-template/), but includes significant customizations. that I will detail below.

![Pasted image 20231016135922](https://user-images.githubusercontent.com/43455034/275612838-d633bf40-e39f-48a0-913a-983b71ef9a1f.png)

Let me know if you have any suggestions or improvements!

## Dependencies

From the community plugins, you will need:

* [Periodic Notes](https://github.com/liamcain/obsidian-periodic-notes)
* [Templater](https://github.com/SilentVoid13/Templater)
* [Dataview](https://github.com/blacksmithgu/obsidian-dataview)
* [Tasks](https://github.com/obsidian-tasks-group/obsidian-tasks)
* [Tracker](https://github.com/pyrochlore/obsidian-tracker)
* [Table of Contents](https://github.com/hipstersmoothie/obsidian-plugin-toc)

You can install these plugins using the Community plugins feature in Settings.

## Setup

### Configurations

#### Configure Daily Notes

In Obsidian, open Settings and navigate to Daily notes. You want to set your date format to `YYYY/MM-MMMM/YYYY-MM-DD-dddd`

![Pasted image 20231016133235](https://user-images.githubusercontent.com/43455034/275612935-193a748e-d107-45bf-8cb3-a7b25c50e83c.png)

You also want to sent up your "New file location." You can see mine is in `Periodics/Daily`. You can pick a better name and, if you want, you can change it, but make sure to update the name of the path as well. Remember to also configure your "Template file location." You can do this by saving `Daily Log Template.md` to a "templates" directory in your vault.

#### Configure Periodic Notes

![Pasted image 20231016132913](https://user-images.githubusercontent.com/43455034/275613014-5827649c-6fc9-4cee-b52c-e17db36e2650.png)

You want to repeat these steps for the community plug in "Periodic Notes," with one minor modification. This way, you can open a note with the same template using either the core or community plug in. The difference here is that by using Periodic Notes, you can also, if you so choose, make weekly and monthly notes as well.

#### Configure Templater

[Templater](https://github.com/SilentVoid13/Templater) is a powerful tool that can render advanced, JavaScript-like commands into note templates. 

![Pasted image 20231016133453](https://user-images.githubusercontent.com/43455034/275613051-8c2eba75-ccfe-4b6f-a5f6-54e32d016439.png)

You want to set the "Template folder location" option as well as "Trigger Templater on new file creation." This will ensure that anytime you create a new daily note with Templater code, you won't have to call "Replace templates in the active file."

### Edit Template File

Once you have the template file in your template folder, you need to customize your template file so that it matches the habits that you want to track.

```
## Habits:
- [ ] Daily log 📅 {{date:YYYY-MM-DD}}
  *Set intentions and plan the day's tasks.*

- [ ] Task 2 📅 {{date:YYYY-MM-DD}}
*Blurb about task*

- [ ] Task 3 📅 {{date:YYYY-MM-DD}}
*Blurb about task*

---
## Trackers 
```tracker
searchType: task.done
searchTarget: 
  - '.*Daily log.*'
  - '.*Task 2.*'
  - '.*Task 3.*' 
datasetName: 
  - Daily Log
  - Task 2
  - Task 3
folder: Periodics
accum: True
line:
  yAxisLocation: left
  title: Tasks and Habits
  yAxisLabel: Counts
  # legendBgColor: white
  lineColor: 
    - blue
    - green
    - orange
  pointSize: 5, 4, 3
  pointColor: blue, green, orange
  showLegend: true
```

If you choose to change or add tasks, remember to update the names of the tasks underneath `searchTarget`. You can create additional line graphs if you so choose, but make sure they look they way you want them too upon render. If you find that the names of the habits are taking up too much space, feel free to use emojis!

### Tracker Summaries

I like to also keep track of my success rate with these habits that I am trying to cultivate, mainly to keep track of which habits are evidently important to me and which are not. I included a script `generate_summaries.sh` where you would have to alter the following block of code:

```sh
habits=(
["Log"]='.*Daily log.*'
["Task 2"]='.*Describe Task 2.*'
["Task 3"]='.*Describe Task 3.*' # etc.
)
```

But you don't even have to use that script. You can just directly alter the tasks in `searchTarget`. 

That should be all. The only other thing I'll say is to make sure [[Tracker Summaries]] points to the right place.

Please let me know if you have any questions or run into any problems. Since this template heavily borrows from [Dann Berg](https://dannb.org/blog/2022/obsidian-daily-note-template/), look into his blog for more ideas on how to use Obsidian. Good luck!
