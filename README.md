# Linux Log Monitoring System

## Project Overview

The Linux Log Monitoring System is a Bash-based automation tool designed to monitor Linux system log files and display recent log entries. It provides a simple way to inspect logs for troubleshooting, system monitoring, and identifying potential issues without manually navigating through log directories.

## Problem It Solves

Monitoring log files manually can be time-consuming, especially when troubleshooting system issues or investigating errors. This project simplifies the process by providing a script that quickly retrieves and displays relevant log information, helping users monitor system activity more efficiently.

## Current Features

- Reads Linux log files
- Displays recent log entries
- Lightweight Bash script
- Easy to execute from the terminal

## Technologies Used

- Bash
- Linux
- Git
- GitHub

## Challenges Encountered

During development, I encountered several version control challenges, including:

- Merge conflicts caused by unrelated Git histories.
- Push rejections because the remote repository contained commits that were not available locally.
- Confusion between the `main` and `master` branches.
- Configuring the correct Git remote repository.

## How the Challenges Were Resolved

The issues were resolved by:

- Inspecting repository status with `git status`.
- Verifying remote repositories using `git remote -v`.
- Pulling remote changes before pushing local commits.
- Understanding branch management in Git.
- Correctly staging, committing, and pushing project updates.

These experiences improved the project's version control workflow and reinforced best practices for managing Git repositories.

## Planned Enhancements

The project is actively being developed. Planned improvements include:

- Continuous log monitoring.
- Filtering logs by severity (ERROR, WARNING, INFO).
- Timestamp-based searches.
- Exporting log reports.
- Automatic alerts for critical log events.
- Improved error handling and input validation.

## Author

**Comfort Agwu**

DevOps Engineer | Technical Writer
