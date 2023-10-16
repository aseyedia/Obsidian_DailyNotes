#!/bin/bash

generate_block() {
    cat <<EOF
**$1**
\`\`\`tracker
searchType: task
searchTarget: '$2'
folder: Periodics
summary:
    template: "Total Days: {{numDays()}}\\nDays Practiced: {{numDaysHavingData()}}\\nTotal Sessions: {{numTargets()}}\\nLongest Streak: {{maxStreak()}} days\\nCurrent Streak: {{currentStreak()}} days"
\`\`\`

EOF
}

declare -A habits

habits=(
["Log"]='.*Daily log.*'
["Task 2"]='.*Describe Task 2.*'
["Task 3"]='.*Describe Task 3.*' # etc.
)

# Redirect the entire loop output to Tracker_Summaries.md
for key in "${!habits[@]}"; do
    generate_block "$key" "${habits[$key]}"
done > Tracker_Summaries.md
