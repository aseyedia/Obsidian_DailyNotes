---
created:
  - <% tp.file.creation_date() %>
tags:
  - Log/MorningLog
---
# <% moment(tp.file.title,'YYYY-MM-DD').format("dddd, MMMM DD, YYYY") %>

<< [[<% fileDate = moment(tp.file.title, 'YYYY-MM-DD-dddd').subtract(1, 'd').format('YYYY-MM-DD-dddd') %>|Yesterday]] | [[<% fileDate = moment(tp.file.title, 'YYYY-MM-DD-dddd').add(1, 'd').format('YYYY-MM-DD-dddd') %>|Tomorrow]] >>
_Remember to set any web blocker app (e.g. RescueTime) to Focus Mode to avoid distractions._
- [[#Recap of Yesterday:|Recap of Yesterday:]]
- [[#Gratitude:|Gratitude:]]
- [[#Dreams & Thoughts:|Dreams & Thoughts:]]
- [[#🖋️ Hand-Written Morning Pages:|🖋️ Hand-Written Morning Pages:]]
- [[#Habits:|Habits:]]
- [[#Affirmations:|Affirmations:]]
- [[#Notes:|Notes:]]
	- [[#Notes:#Unfinished Tasks from Previous Notes:|Unfinished Tasks from Previous Notes:]]
	- [[#Notes:#Notes created today|Notes created today]]
	- [[#Notes:#Notes last touched today|Notes last touched today]]

## Recap of Yesterday:

_(Quickly glance over the highlights, learnings, or reflections from the previous day. Linking to the actual daily note from yesterday can be useful for a deeper dive.)_

---
## Gratitude:
1. 
2. 
3. 
---
## Dreams & Thoughts:

_(Note any dreams you remember from last night or immediate thoughts this morning.)_

---
## 🖋️ Hand-Written Morning Pages:

_(Set aside some time to free write by hand. Don't concern yourself with grammar, punctuation, or making sense. Just let your thoughts flow onto paper for as long as you feel inspired.)_

---
## Habits:

- [ ] Hand-written morning pages 📅 {{date:YYYY-MM-DD}}
  *Start the day with reflection.*

- [ ] Daily log 📅 {{date:YYYY-MM-DD}}
  *Set intentions and plan the day's tasks.*

- [ ] At least 10 minutes of yoga 📅 {{date:YYYY-MM-DD}}
  *A good way to stretch and mentally prepare for the rest of the day.*

- [ ] Meditation session 📅 {{date:YYYY-MM-DD}}
  *Center the mind and start the day with clarity.*

- [ ] Do one section of the Data Engineering Zoomcamp ([[Data Engineering Zoomcamp Progress]]) 📅 {{date:YYYY-MM-DD}}
  *Dive into learning while the mind is still fresh.*

- [ ] Do one LeetCode challenge 📅 {{date:YYYY-MM-DD}}
  *Keep the analytical mindset flowing after the Zoomcamp.*

- [ ] Personal reading 📅 {{date:YYYY-MM-DD}}
  *Engage in some enlightening literature or enjoyable fiction.*

- [ ] Apply to at least one job today 📅 {{date:YYYY-MM-DD}}
  *Leverage the momentum and productivity from the morning to tackle job applications.*

- [ ] Write stand-up comedy content and/or TikTok comedy content 📅 {{date:YYYY-MM-DD}}
  *Tap into creativity in the afternoon or evening when the analytical tasks are done.*

- [ ] Went on a jog or a walk 📅 {{date:YYYY-MM-DD}}
  *A great way to take a break, clear the mind, and get some fresh air.*

---
## Affirmations:

_(Jot down positive affirmations or statements that resonate with you today.)_ 

1.

---
## Notes:

_(Final free write space, type down anything and everything you might need to note.)_


### Unfinished Tasks from Previous Notes:
```tasks
not done
heading includes Notes
path includes Periodics
```
### Notes created today
```dataview
List FROM "" WHERE file.cday = date("<%tp.date.now("YYYY-MM-DD")%>") SORT file.ctime asc
```

### Notes last touched today
```dataview
List FROM "" WHERE file.mday = date("<%tp.date.now("YYYY-MM-DD")%>") SORT file.mtime asc
```
