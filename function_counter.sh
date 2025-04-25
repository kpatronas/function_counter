#!/bin/bash

file="$1"

# Extract function names
functions=$(grep -E '^[[:space:]]*(function[[:space:]]+)?[a-zA-Z_][a-zA-Z0-9_]*[[:space:]]*\(\)[[:space:]]*\{' "$file" \
  | sed -E 's/^[[:space:]]*(function[[:space:]]+)?([a-zA-Z_][a-zA-Z0-9_]*)[[:space:]]*\(\)[[:space:]]*\{.*/\2/' \
  | sort -u)

# Print header
printf "%-35s | %s\n" "Function Name" "Call Count"
printf "%-35s-+-%s\n" "$(printf '%.0s-' {1..35})" "$(printf '%.0s-' {1..10})"

# Loop through functions and print counts
for func in $functions; do
  count=$(grep -vE '^\s*#' "$file" | grep -vE "^\s*(function\s+)?$func\s*\(\)" | grep -wo "$func" | wc -l)
  printf "%-35s | %d\n" "$func" "$count"
done
