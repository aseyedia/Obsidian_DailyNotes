---
aliases: []
tags: []
status: 
date: <% tp.file.creation_date() %>
type: meeting
---

tags: [[Meetings]]
Date: [[<% tp.date.now("YYYY-MM-DD-dddd") %>]]
<%*
  const meetingTopic = await tp.system.prompt("What is the meeting about?");
  tp.file.title = `${meetingTopic}`;
%>
## [[<% tp.date.now("YYYY-MM-DD") + " " + tp.file.title %>]]

## Table of Contents

- [[#Agenda/Questions|Agenda/Questions]]
- [[#Raw Notes|Raw Notes]]
- [[#Post-Meeting Reflection|Post-Meeting Reflection]]
- [[#Processed Notes|Processed Notes]]

**Attendees**:

### Agenda/Questions

### Raw Notes

### Post-Meeting Reflection

### Processed Notes

<%*
const newFileName = tp.date.now("YYYY-MM-DD") + " " + tp.file.title;
const parentFolder = await tp.file.folder(true);
if (!parentFolder.includes("Custom Templates")) {
  await tp.file.rename(newFileName);
}
%>