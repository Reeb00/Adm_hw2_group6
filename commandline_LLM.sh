#!/bin/bash
jq -s 'sort_by(-(.works | map(.books_count | tonumber) | add)) | .[:5] | .[] | {id, title, total_books: (.works | map(.books_count | tonumber) | add)}' series.json
