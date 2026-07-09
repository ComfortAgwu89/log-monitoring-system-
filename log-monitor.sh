#!/bin/bash

LOG_FILE="logs/access.log"
REPORT_DIR="reports"
DATE=$(date +"%Y-%m-%d")
REPORT_FILE="$REPORT_DIR/report-$DATE.txt"

# Count errors
ERROR_404=$(grep -c " 404 " "$LOG_FILE")
ERROR_500=$(grep -c " 500 " "$LOG_FILE")

# Generate report
echo "==============================" > "$REPORT_FILE"
echo " Daily Log Monitoring Report" >> "$REPORT_FILE"
echo "==============================" >> "$REPORT_FILE"
echo "Date: $(date)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
echo "404 Errors: $ERROR_404" >> "$REPORT_FILE"
echo "500 Errors: $ERROR_500" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
echo "Report generated successfully." >> "$REPORT_FILE"

echo "Report saved to $REPORT_FILE"
