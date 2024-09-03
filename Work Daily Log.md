---
# https://dannb.org/blog/2022/obsidian-daily-note-template/
# Plugin requirements: templater, Google Calendar, dataview, Tasks, Reminder
aliases: []
status: 
tags:
  - Log/WorkLog
title: Work Daily Log
---

## <% tp.file.title + " Work Log" %>

<< [[<% fileDate = moment(tp.file.title, 'YYYY-MM-DD-dddd').subtract(1, 'd').format('YYYY-MM-DD-dddd') %>|Yesterday]] | [[<% fileDate = moment(tp.file.title, 'YYYY-MM-DD-dddd').add(1, 'd').format('YYYY-MM-DD-dddd') %>|Tomorrow]] >>

_Remember to set any web blocker app (e.g. RescueTime) to Focus Mode to avoid distractions._

_Use cmd+shift+L to switch Periodic Notes Calendar Sets._

---
## Schedule

- [View Work Calendar Here](https://outlook.office.com/calendar/view/week)
- [View Personal Calendar Here](https://calendar.google.com/calendar/u/0/r)
## Unfinished Tasks

> [!note] From Daily Notes (Limit 5)
> ```tasks
> not done
> path includes Spaces/Home/Daily Notes
> limit 10
> hide backlinks
> # created before today
> sort by priority
> tags does not include Personal/TODO
> heading does not include Projects Worked On Today
> description does not include EOD
> # explain
> ```

> [!fun]- Personal Stuff
> ```tasks
> tags include Personal/TODO 
> hide backlink
> not done
> ```
> 

---
<%*
// These two functions work together to find the most recently created daily note 
// in a way that's year/month agnostic, meaning that it will correctly handle going back
// a month or a year to find a "recent" note within 50 days. You can alter 
// checkFileExistence if your Daily Notes path differs than mine.
// Function to log messages for debugging.
function log(msg) { console.log(msg); }

// Function to check file existence for a given date
async function checkFileExistence(date) {
  const year = tp.date.now("YYYY", 0, date, "YYYY-MM-DD-dddd");
  const month = tp.date.now("MM-MMMM", 0, date, "YYYY-MM-DD-dddd");
  const fileName = tp.date.now("YYYY-MM-DD-dddd", 0, date, "YYYY-MM-DD-dddd");
  const filePath = `Spaces/Home/Daily Notes/${year}/${month}/${fileName}.md`;
  const file = app.vault.getAbstractFileByPath(filePath);
  log(`Checking existence for: ${filePath} - Exists: ${!!file}`);
  return file instanceof tp.obsidian.TFile ? file.basename : null;
}

// Loop to find the most recent daily note
async function findLastNote() {
  for (let i = 1; i <= 50; i++) {
    const date = tp.date.now("YYYY-MM-DD-dddd", -i);
    const lastFile = await checkFileExistence(date);
    if (lastFile) {
      return { date: tp.date.now("YYYY-MM-DD", -i), weekday: tp.date.now("dddd", -i), basename: lastFile };
    }
  }
  return { date: null, basename: "No recent daily note found" };
}

let lastDate = await findLastNote();

// Determine the labels based on the date
const today = tp.date.now("YYYY-MM-DD");
const yesterday = tp.date.now("YYYY-MM-DD", -1);
const startOfWeek = moment().startOf('week').format('YYYY-MM-DD');
const isYesterday = yesterday === lastDate.date;
const isThisWeek = lastDate.date >= startOfWeek && lastDate.date < today;
const isLastWeek = !isThisWeek && moment(lastDate.date).isAfter(moment().subtract(1, 'weeks').startOf('week'));

let label;
if (isYesterday) {
  label = "Yesterday's";
} else if (isThisWeek) {
  label = `${lastDate.weekday}'s`;
} else if (isLastWeek) {
  label = `Last ${lastDate.weekday}'s`;
} else {
  label = moment(lastDate.date).format('dddd, MMMM Do');
}
%>
## [[<% lastDate.basename %>|<% label %>]] End of Day Review

![[<% lastDate.basename %>#End of Day Review]]

## Log



## End of Day Review


- [ ] Complete the EOD Review ➕ <%tp.date.now('YYYY-MM-DD')%> (@<%tp.date.now('YYYY-MM-DD') + " 04:45pm"%>)

---

## Index
### Notes Labeled \#TODO

```dataview
TABLE file.tags AS Tags
WHERE contains(tags, "TODO")
```

### Notes Created Today

```dataview
TABLE file.ctime AS "Creation Time"
// FROM "Spaces/Home"
WHERE file.cday = date(<% tp.date.now('YYYY-MM-DD') %>)
SORT file.ctime ASC
```

### Notes Last Touched Today

```dataview
TABLE file.mtime AS "Modification Time"
// FROM "Spaces/Home"
WHERE file.mday = date(<% tp.date.now('YYYY-MM-DD') %>) AND file.mtime > date(<% tp.date.now('YYYY-MM-DD') %>)
SORT file.mtime ASC
```
