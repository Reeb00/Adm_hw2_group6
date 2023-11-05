#!/bin/bash
cat series.json | jq '. | { id: .id, title: .title, total_books_count: (.works | map(.books_count | tonumber) | add)}' | jq -s 'sort_by(-.total_books_count) | .[:5]'
