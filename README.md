# Log-Archive-Tool
## Overview

This project is a simple Bash script designed to archive log files from a specified directory. The script compresses the logs into a `.tar.gz` file and stores it in a dedicated archive directory. It also logs the archiving process, including the date and time of the operation.

Project inspired from https://roadmap.sh/projects/log-archive-tool

## Features
- Accepts a log directory as input.
- Compresses the log files into a `.tar.gz` archive.
- Archives are stored in `~/logs_archive/` with a timestamp.
- Logs the date and time of the archiving process to an archive log file.

## Steps to Run the Script
   ```
   git clone https://github.com/mohdyasirkn/Log-Archive-Tool.git
   cd Log-Archive-Tool 
   chmod +x logarchivetool.sh
   ./logarchivetool.sh <log-directory>
   ```