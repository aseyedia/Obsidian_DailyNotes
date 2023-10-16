---
created:
  - <% tp.file.creation_date() %>
tags:
  - Log/MorningLog
cssclasses: []
---
# <% moment(tp.file.title,'YYYY-MM-DD').format("dddd, MMMM DD, YYYY") %>

<< [[<% fileDate = moment(tp.file.title, 'YYYY-MM-DD-dddd').subtract(1, 'd').format('YYYY-MM-DD-dddd') %>|Yesterday]] | [[<% fileDate = moment(tp.file.title, 'YYYY-MM-DD-dddd').add(1, 'd').format('YYYY-MM-DD-dddd') %>|Tomorrow]] >>
_Remember to set any web blocker app (e.g. RescueTime) to Focus Mode to avoid distractions._
- [[#Recap of Yesterday:|Recap of Yesterday:]]
- [[#Dreams & Thoughts:|Dreams & Thoughts:]]
- [[#Habits:|Habits:]]
- [[#Trackers|Trackers]]
- [[#Missed Habits from Yesterday:|Missed Habits from Yesterday:]]
- [[#Notes:|Notes:]]
	- [[#Notes:#Unfinished Tasks from Previous Notes:|Unfinished Tasks from Previous Notes:]]
	- [[#Notes:#Notes created today|Notes created today]]
	- [[#Notes:#Notes last touched today|Notes last touched today]]
## Recap of Yesterday:
_(Quickly glance over the highlights, learnings, or reflections from the previous day. Linking to the actual daily note from yesterday can be useful for a deeper dive.)_

---
## Dreams & Thoughts:
_(Note any dreams you remember from last night or immediate thoughts this morning.)_

---
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

[[Tracker Summaries]]

---
## Missed Habits from Yesterday:
```tasks
not done
(heading includes Habits) OR (heading includes Tasks & Goals for Today)
path includes Periodics
due on yesterday
```
---
## Notes:

_(Final free write space, type down anything and everything you might need to note.)_


### Unfinished Tasks from Previous Notes:
```tasks
not done
(heading includes Notes) OR (heading includes Recap of Yesterday)
path includes Periodics
# explain # (uncomment '# explain' to understand code)
```
### Notes created today
```dataview
List FROM "" WHERE file.cday = date("<%tp.date.now("YYYY-MM-DD")%>") SORT file.ctime asc
```

### Notes last touched today
```dataview
List FROM "" WHERE file.mday = date("<%tp.date.now("YYYY-MM-DD")%>") SORT file.mtime asc
```
