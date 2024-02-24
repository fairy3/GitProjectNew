#!/bin/bash

# Check for AWS credentials in staged changes
if git diff --cached --name-only | xargs grep -E '(AWS_ACCESS_KEY_ID|AWS_SECRET_ACCESS_KEY|AWS_SESSION_TOKEN)'; then
    echo "Error: AWS credentials detected in staged changes. Please remove them before committing."
    exit 1
fi

exit 0
