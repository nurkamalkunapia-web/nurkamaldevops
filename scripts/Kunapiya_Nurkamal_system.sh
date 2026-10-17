#!/bin/bash

echo "=================================="
echo "       Student Information"
echo "=================================="
echo "Name: Kunapiya"
echo "Surname: Nurkamal"
echo "Group: IT2-2309"
echo "Student ID: 41526"

echo ""
echo "=================================="
echo "       System Information"
echo "=================================="
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
