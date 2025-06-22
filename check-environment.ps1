# SleepFree Development Environment Checker
Write-Host "🔍 Checking SleepFree development environment..." -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Green

$allGood = $true

# Check Android Studio
Write-Host "`n📱 Checking Android Studio..." -ForegroundColor Yellow
if (Get-Command "studio" -ErrorAction SilentlyContinue) {
    Write-Host "✅ Android Studio found in PATH" -ForegroundColor Green
} elseif (Test-Path "C:\Program Files\Android\Android Studio\bin\studio64.exe") {
    Write-Host "✅ Android Studio found in default location" -ForegroundColor Green
} else {
    Write-Host "❌ Android Studio not found" -ForegroundColor Red
    Write-Host "   Download from: https://developer.android.com/studio" -ForegroundColor Yellow
    $allGood = $false
}

# Check Java/JDK
Write-Host "`n☕ Checking Java/JDK..." -ForegroundColor Yellow
if (Get-Command "java" -ErrorAction SilentlyContinue) {
    $javaVersion = java -version 2>&1 | Select-String "version"
    Write-Host "✅ Java found: $javaVersion" -ForegroundColor Green
} else {
    Write-Host "❌ Java not found" -ForegroundColor Red
    Write-Host "   Install JDK 11 or higher" -ForegroundColor Yellow
    $allGood = $false
}

# Check Git
Write-Host "`n📚 Checking Git..." -ForegroundColor Yellow
if (Get-Command "git" -ErrorAction SilentlyContinue) {
    $gitVersion = git --version
    Write-Host "✅ Git found: $gitVersion" -ForegroundColor Green
} else {
    Write-Host "❌ Git not found" -ForegroundColor Red
    Write-Host "   Download from: https://git-scm.com/" -ForegroundColor Yellow
    $allGood = $false
}

# Check Node.js and Firebase CLI
Write-Host "`n🔥 Checking Node.js..." -ForegroundColor Yellow
if (Get-Command "node" -ErrorAction SilentlyContinue) {
    $nodeVersion = node --version
    Write-Host "✅ Node.js found: $nodeVersion" -ForegroundColor Green
    
    if (Get-Command "firebase" -ErrorAction SilentlyContinue) {
        $firebaseVersion = firebase --version
        Write-Host "✅ Firebase CLI found: $firebaseVersion" -ForegroundColor Green
    } else {
        Write-Host "❌ Firebase CLI not found" -ForegroundColor Red
        Write-Host "   Install with: npm install -g firebase-tools" -ForegroundColor Yellow
        $allGood = $false
    }
} else {
    Write-Host "❌ Node.js not found" -ForegroundColor Red
    Write-Host "   Download from: https://nodejs.org/" -ForegroundColor Yellow
    $allGood = $false
}

# Check project structure
Write-Host "`n📁 Checking project structure..." -ForegroundColor Yellow
$requiredDirs = @("android-app", "business", "development", "design", "content")

foreach ($dir in $requiredDirs) {
    if (Test-Path $dir) {
        Write-Host "✅ Directory exists: $dir" -ForegroundColor Green
    } else {
        Write-Host "❌ Missing directory: $dir" -ForegroundColor Red
        $allGood = $false
    }
}

# Summary
Write-Host "`n📊 Environment Check Summary" -ForegroundColor Green
Write-Host "=============================" -ForegroundColor Green

if ($allGood) {
    Write-Host "🎉 All requirements met! Ready for development." -ForegroundColor Green
    Write-Host "`n📋 Next steps:" -ForegroundColor Yellow
    Write-Host "1. Run android-app\setup-project.bat to create Android project" -ForegroundColor White
    Write-Host "2. Open Android Studio and start development" -ForegroundColor White
    Write-Host "3. Set up Firebase project" -ForegroundColor White
    Write-Host "4. Configure Samsung Health SDK" -ForegroundColor White
} else {
    Write-Host "⚠️  Some requirements missing. Please install missing components." -ForegroundColor Yellow
}

Write-Host "`n🚀 Ready to revolutionize smoking cessation!" -ForegroundColor Green
