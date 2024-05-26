# Hosting Directory Structure
This file is created by Ansible. Any changes made to it may be overwritten

## Appdata
- Contains larger data (like documents, media)
- Mostly things that we don't want to live on the local drive because they take up a lot of space
- Most likely a remote network share
- Beware of latency and other applications using this space

## Config
- Contains app configuration goes, so it persists beyond the docker container lifecycle
- This should be local, and ideally, fast (local SSD, for example)

## Cache
- This is where we want things to be fast, but also might be somewhat large
- Contains thumbnails, caches, transcodes, etc.
- These things need to be readily accessible, and are likely constantly changing, so they shouldn't be remote or on a spinning drive
- Think thumbnails, caches, transcodes, etc.
- This is kepy away from the config so it doesn't clutter up the config area
- This should be local, and ideally, fast (local SSD, for example)
