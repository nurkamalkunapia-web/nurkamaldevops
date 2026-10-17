#!/bin/bash

echo "=================================="
echo " Student: Kunapiya Nurkamal"
echo " Group: IT2-2309"
echo " Student ID: 41526"
echo "=================================="

echo ""
echo "System information:"
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current directory: $(pwd)"
echo "Date and time: $(date)"

echo ""
echo "Disk usage:"
df -h /

echo ""
echo "Memory usage:"
free -h

echo ""
echo "Project directories:"
ls -la

echo ""
echo "Script completed successfully."
