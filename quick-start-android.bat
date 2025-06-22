@echo off
REM Quick start script for Android development on Windows

echo 🚀 Setting up SleepFree Android development environment...

REM Check if Android Studio is installed
where android >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Android Studio not found. Please install Android Studio first.
    echo 📥 Download from: https://developer.android.com/studio
    pause
    exit /b 1
)

echo ✅ Android Studio found

REM Navigate to Android project directory
cd 01-Development\android-app

echo 📱 Android project setup ready!
echo Next steps:
echo 1. Open Android Studio
echo 2. Open this project directory: %cd%
echo 3. Follow setup guide: ..\00-environment-setup.md
echo 4. Review project setup: 00-setup-guide.md

pause
