#!/bin/bash

if [ -z "$1" ]; then
	echo "Error: Please provide a commit message."
	echo "In format: ./neilpush.sh \"Your commit message\""
	exit 1
fi

CM="$1"

echo "Adding changes..."
git add .

echo "Commiting changes with message: '$CM'..."
git commit -m "$CM"

echo "Pushing to GitHub..."
git push origin main

echo "Successfully pushed."
