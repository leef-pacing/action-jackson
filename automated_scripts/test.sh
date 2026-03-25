#!/bin/bash
# test.sh - check if required files exist

echo "Looking for missing files..."

FILES=("config.json" "README.md")

PASS=true

for FILE in "${FILES[@]}"; do
  if [ -f "$FILE" ]; then
    echo "✅ $FILE exists"
  else
    echo "❌ $FILE is missing"
    PASS=false
  fi
done

if [ "$PASS" = true ]; then
  echo "All files are present. Tests passed!"
  exit 0
else
  echo "Some files are missing. Tests failed!"
  exit 1
fi