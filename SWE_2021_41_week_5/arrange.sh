#!/bin/bash

files_dir="../files"

for file in "$files_dir"/*; do
	filename=$(basename "$file")
	first_letter=${filename:0:1}
	first_letter=${first_letter,,}
	target_dir="../$first_letter"
	mv "$file" "$target_dir/"
done
