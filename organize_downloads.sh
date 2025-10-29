# Version 1.5 - Added directory checks
#!/bin/bash
# daily_organizing.sh - Organize downloads by file type
# Creates a folder with today's date and moves files from downloads into that folder with subdirectories for PDF, Image, Spreadsheet, Video, and Other files


# Check if Downloads directory exists
if [ ! -d ~/Downloads]; then
echo "Error: Downloads directory not found"
exit 1
fi

# Check if Documents directory exists
if [ ! -d ~/Documents]; then
echo "Error: Documents directory not found"
exit 1
fi


# Set the documents directory
DOCUMENTS=~/Documents

# Store today's date
TODAY=$(date +%Y-%m-%d)

# Create folder for today's date and subfolders
mkdir -p "$DOCUMENTS/$TODAY"/{PDFs,Images,Spreadsheets,Videos,Other}

# Move files by type
echo "Organizing files from Downloads..."

# Move files to correct folder
if mv ~/Downloads/*.pdf "$DOCUMENTS/$TODAY/PDFs/" 2>/dev/null; then
echo "Moved PDF files"
fi
if mv ~/Downloads/*.{jpg,jpeg,png,gif,heic} "$DOCUMENTS/$TODAY/Images/" 2>/dev/null; then
echo "Moved image files"
fi
if mv ~/Downloads/*.{xls,xlsx,ods,csv,xml} "$DOCUMENTS/$TODAY/Spreadsheets/" 2>/dev/null; then
echo "Moved spreadsheet files"
fi
if mv ~/Downloads/*.{mp4,mov,avi,mkv} "$DOCUMENTS/$TODAY/Videos/" 2>/dev/null; then
echo "Moved video files"
fi
find ~/Downloads -maxdepth 1 -type f -exec mv {} "$DOCUMENTS/$TODAY/Other/" \; 2>/dev/null
echo "Moved remaining files"

# Print result
echo "All files organized into: $DOCUMENTS/$TODAY"
echo ""
echo "Summary:"
echo " PDFs: $(ls -1 "$DOCUMENTS/$TODAY/PDFs/" 2>/dev/null | wc -l | xargs) files"
echo " Images: $(ls -1 "$DOCUMENTS/$TODAY/Images/" 2>/dev/null | wc -l | xargs) files"
echo " Spreadsheets: $(ls -1 "$DOCUMENTS/$TODAY/Spreadsheets/" 2>/dev/null | wc -l | xargs) files"
echo " Videos: $(ls -1 "$DOCUMENTS/$TODAY/Videos/" 2>/dev/null | wc -l | xargs) files"
echo " Other: $(ls -1 "$DOCUMENTS/$TODAY/Other/" 2>/dev/null | wc -l | xargs) files"
