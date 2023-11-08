#!/usr/bin/env bash

# git log format
TEMPLATE_AUTHOR_NAME_FORMAT="%an"
TEMPLATE_AUTHOR_EMAIL_FORMAT="%ae"

# get related info from commit logs
git_log_format() {
  pattern="$1"
  reference="$2"
  git log -1 --pretty=format:"$pattern" "$reference"
}

COMMIT_AUTHOR_NAME=$(git_log_format "${TEMPLATE_AUTHOR_NAME_FORMAT}" "HEAD")
COMMIT_AUTHOR_EMAIL=$(git_log_format "${TEMPLATE_AUTHOR_EMAIL_FORMAT}" "HEAD")

echo "$COMMIT_AUTHOR_NAME"
echo "$COMMIT_AUTHOR_EMAIL"
