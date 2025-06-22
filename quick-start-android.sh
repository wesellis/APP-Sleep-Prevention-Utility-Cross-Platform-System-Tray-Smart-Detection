#!/bin/bash
# Quick start script for Android development

echo "🚀 Setting up SleepFree Android development environment..."

# Check if Android Studio is installed
if ! command -v android &> /dev/null; then
    echo "❌ Android Studio not found. Please install Android Studio first."
    echo "📥 Download from: https://developer.android.com/studio"
    exit 1
fi

echo "✅ Android Studio found"

# Navigate to Android project directory
cd 01-Development/android-app

echo "📱 Android project setup ready!"
echo "Next steps:"
echo "1. Open Android Studio"
echo "2. Open this project directory: A:\Project\Ebay Scraper\SleepFree-Project"
echo "3. Follow setup guide: ../00-environment-setup.md"
echo "4. Review project setup: 00-setup-guide.md"

