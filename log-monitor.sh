

#!/bin/bash

ACCESS_LOG="logs/access.log"
AUTH_LOG="logs/auth.log"
REPORT_DIR="reports"

mkdir -p "$REPORT_DIR"

DATE=$(date +"%Y-%m-%d")
REPORT_FILE="$REPORT_DIR/report-$DATE.txt"

ERROR_404=$(grep -c " 404 " "$ACCESS_LOG")
ERROR_500=$(grep -c " 500 " "$ACCESS_LOG")
FAILED_SSH=$(grep -c "Failed password" "$AUTH_LOG")

{
echo "======================================"
echo "      DAILY LOG MONITORING REPORT"
echo "======================================"
echo "Date: $(date)"
echo ""
echo "HTTP 404 Errors : $ERROR_404"
echo "HTTP 500 Errors : $ERROR_500"
echo "Failed SSH Logins : $FAILED_SSH"
echo ""
echo "Report generated successfully."
} > "$REPORT_FILE"

echo "=================================="
echo "Log Monitoring Summary"
echo "=================================="
echo "404 Errors       : $ERROR_404"
echo "500 Errors       : $ERROR_500"
echo "Failed SSH Logins: $FAILED_SSH"
echo ""
echo "Report saved to $REPORT_FILE"
