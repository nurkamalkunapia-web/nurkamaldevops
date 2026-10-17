#!/bin/bash

STUDENT_NAME="${STUDENT_NAME:-Kunapiya}"
STUDENT_SURNAME="${STUDENT_SURNAME:-Nurkamal}"
STUDENT_GROUP="${STUDENT_GROUP:-IT2-2309}"
STUDENT_ID="${STUDENT_ID:-41526}"

echo "=================================="
echo "DevOps Student Application"
echo "=================================="
echo "Name: $STUDENT_NAME"
echo "Surname: $STUDENT_SURNAME"
echo "Group: $STUDENT_GROUP"
echo "Student ID: $STUDENT_ID"
echo ""
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s)"
echo ""
echo "Disk Usage:"
df -h /
echo ""
echo "Memory Usage:"
free -h

if [ -f "Kunapiya_Nurkamal_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi

echo "Application is running successfully!"
