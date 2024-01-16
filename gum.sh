#!/bin/bash

echo "Welcome!"

TYPE=$(gum choose "fix" "feat" "docs" "style" "refactor" "test" "chore" "revert")

echo PROMPT FOR INPUT
gum input > answer.txt

echo SENSITIVE PROMPT FOR INPUT
gum input --password > password.txt

echo PROMPT FOR MULTI-LINE TEXT
echo Note: CTRL+D is used to complete text entry. CTRL+C and esc will cancel.
gum write > story.txt

echo FILTER: FUZZY MATCHING
echo Strawberry >> flavors.txt
echo Banana >> flavors.txt
echo Cherry >> flavors.txt
cat flavors.txt | gum filter > selection.txt

echo FILTER: With /--limit flag
cat flavors.txt | gum filter --limit 2

echo FILTER: No limit on selection
cat flavors.txt | gum filter --no-limit