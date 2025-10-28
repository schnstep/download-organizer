#!/bin/bash
# This script organizes Downloads by file type
   
# Set the downloads directory
DOWNLOADS=~/Downloads
   
# Create organization folders
mkdir -p "$DOWNLOADS"/{PDFs,Images,Documents,Videos,Archives}
   
# Move files by type
mv "$DOWNLOADS"/*.pdf "$DOWNLOADS"/PDFs/ 2>/dev/null
mv "$DOWNLOADS"/*.{jpg,jpeg,png,gif} "$DOWNLOADS"/Images/ 2>/dev/null
mv "$DOWNLOADS"/*.{doc,docx,txt} "$DOWNLOADS"/Documents/ 2>/dev/null
mv "$DOWNLOADS"/*.{mp4,mov,avi} "$DOWNLOADS"/Videos/ 2>/dev/null
mv "$DOWNLOADS"/*.{zip,tar,gz} "$DOWNLOADS"/Archives/ 2>/dev/null
   
echo "Downloads organized! ✨"