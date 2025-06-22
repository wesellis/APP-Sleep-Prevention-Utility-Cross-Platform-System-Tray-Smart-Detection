@echo off
echo 🚀 SleepFree Android Project Setup
echo ================================

echo.
echo This script will help you create the SleepFree Android project.
echo.

echo 📋 Prerequisites:
echo - Android Studio installed
echo - Samsung Health SDK downloaded
echo - Galaxy Watch for testing (recommended)
echo.

pause

echo.
echo 📱 Creating Android Studio project...
echo.

echo 1. Open Android Studio
echo 2. Click "New Project"
echo 3. Select "Empty Activity"
echo 4. Configure project:
echo    - Name: SleepFree
echo    - Package: com.sleepfree.app
echo    - Location: %cd%\android-app
echo    - Language: Kotlin
echo    - Minimum SDK: API 26 (Android 8.0)
echo    - Build configuration: Kotlin DSL

echo.
echo 5. After project creation, copy the build.gradle.kts content from setup guide
echo 6. Copy colors.xml and strings.xml from the setup guide
echo 7. Sync project and verify everything works

echo.
echo 📖 For detailed instructions, see: android-app\README.md
echo.

pause
