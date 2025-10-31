# Download Organizer

![GitHub last commit](https://img.shields.io/github/last-commit/schnstep/download-organizer)
![GitHub issues](https://img.shields.io/github/issues/schnstep/download-organizer)
![GitHub stars](https://img.shields.io/github/stars/schnstep/download-organizer)
![License](https://img.shields.io/github/license/schnstep/download-organizer)

Automated file organization script that sorts downloads into dated folders by file type.

## 🎯 Purpose

Saves 5-10 minutes daily by automatically organizing downloads into categorized folders with date-based organization.

## ✨ Features

- Creates folders with today's date (YYYY-MM-DD format)
- Organizes files into categories:
  - PDFs
  - Images (jpg, png, gif, heic)
  - Spreadsheets (xlsx, csv, xml)
  - Other files
- Provides summary of files moved
- Safe: Only moves files, not directories

## 🚀 Usage
```bash
./organize_downloads.sh
```

## 📦 Installation
```bash
# Clone repository
git clone git@github.com:schnstep/download-organizer.git

# Make executable
chmod +x download-organizer/organize_downloads.sh

# Copy to PATH (optional)
cp download-organizer/organize_downloads.sh ~/.local/bin/organize-downloads
```

## 💼 Business Value

- **Time saved:** 30-70 hours annually
- **ROI:** €900-2,100/year (at €30/hour)
- **Use cases:** Personal productivity, small business file management

## 🛠️ Technologies

- Bash scripting
- Command line automation
- Date manipulation

## 📝 License

MIT License - feel free to use and modify

## 👤 Author

Stephan Schneider - AI Process Optimization Consultant
