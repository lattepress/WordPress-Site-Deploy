#!/bin/sh -l

git-ftp push \
  --syncroot $INPUT_SYNCROOT \
  --user $INPUT_USERNAME \
  --passwd $INPUT_PASSWORD \
  --remote-root $INPUT_REMOTE_ROOT \
  $INPUT_OPTIONS \
  $INPUT_URL