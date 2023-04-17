path=$(pwd)
notes_folder="$path/notes"
templates_folder="$path/templates"
daily_note_template="$templates_folder/daily-note.md"

# Get the current date
date=$(date +%Y-%m-%d)

# 1. Copy the daily note template contents
# 2. Replace the date placeholder with the current date
# 3. Save contents in a file in the notes folder, following the other files naming convention
cat $daily_note_template | sed "s/YYYY-MM-DD/$date/g" > "$notes_folder/$date-note.md"
