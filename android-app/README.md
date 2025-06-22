# SleepFree Android Application

## Project Setup Guide

### Step 1: Create New Android Project

#### Android Studio Project Creation
1. Open Android Studio
2. Click "New Project" 
3. Select "Empty Activity"
4. Configure project:
   - **Name:** SleepFree
   - **Package name:** com.sleepfree.app
   - **Save location:** A:\PROJECTS - CURRENT\SleepFree - Revolutionary Sleep-Based Smoking Cessation System\android-app
   - **Language:** Kotlin
   - **Minimum SDK:** API 26 (Android 8.0) - required for sleep tracking
   - **Build configuration language:** Kotlin DSL (build.gradle.kts)

### Step 2: Configure Build Files

#### App-level build.gradle.kts
`kotlin
plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    kotlin("kapt")
}

android {
    namespace = "com.sleepfree.app"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.sleepfree.app"
        minSdk = 26
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
        debug {
            applicationIdSuffix = ".debug"
            isDebuggable = true
        }
    }
    
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
    
    kotlinOptions {
        jvmTarget = "1.8"
    }
    
    buildFeatures {
        viewBinding = true
    }
}

dependencies {
    // Core Android
    implementation("androidx.core:core-ktx:1.12.0")
    implementation("androidx.appcompat:appcompat:1.6.1")
    implementation("com.google.android.material:material:1.10.0")
    implementation("androidx.constraintlayout:constraintlayout:2.1.4")
    
    // Architecture Components
    implementation("androidx.lifecycle:lifecycle-viewmodel-ktx:2.7.0")
    implementation("androidx.lifecycle:lifecycle-livedata-ktx:2.7.0")
    implementation("androidx.navigation:navigation-fragment-ktx:2.7.4")
    implementation("androidx.navigation:navigation-ui-ktx:2.7.4")
    
    // Room Database
    implementation("androidx.room:room-runtime:2.6.0")
    implementation("androidx.room:room-ktx:2.6.0")
    kapt("androidx.room:room-compiler:2.6.0")
    
    // Audio Processing
    implementation("androidx.media:media:1.6.0")
    
    // Charts
    implementation("com.github.PhilJay:MPAndroidChart:v3.1.0")
    
    // Testing
    testImplementation("junit:junit:4.13.2")
    androidTestImplementation("androidx.test.ext:junit:1.1.5")
    androidTestImplementation("androidx.test.espresso:espresso-core:3.5.1")
}
`

### Step 3: Colors and Strings

#### colors.xml
`xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- SleepFree Brand Colors -->
    <color name="primary_green">#2E4F3E</color>
    <color name="secondary_sage">#7FB069</color>
    <color name="accent_yellow">#FFE66D</color>
    <color name="background_light">#F8F9FA</color>
    <color name="text_dark">#212529</color>
    
    <!-- Status Colors -->
    <color name="success_green">#28A745</color>
    <color name="warning_yellow">#FFC107</color>
    <color name="danger_red">#DC3545</color>
    <color name="sleep_purple">#6C63FF</color>
    
    <!-- System Colors -->
    <color name="white">#FFFFFF</color>
    <color name="black">#000000</color>
    <color name="gray_light">#F5F5F5</color>
    <color name="gray_medium">#9E9E9E</color>
    <color name="gray_dark">#424242</color>
</resources>
`

#### strings.xml
`xml
<resources>
    <string name="app_name">SleepFree</string>
    <string name="app_tagline">Freedom While You Sleep</string>
    
    <!-- Welcome Screen -->
    <string name="welcome_title">Quit Smoking While You Sleep</string>
    <string name="welcome_subtitle">Revolutionary sleep-based technology</string>
    <string name="get_started">Get Started</string>
    
    <!-- Navigation -->
    <string name="nav_dashboard">Dashboard</string>
    <string name="nav_sleep">Sleep</string>
    <string name="nav_progress">Progress</string>
    <string name="nav_emergency">Emergency</string>
    
    <!-- Dashboard -->
    <string name="days_smoke_free">Days Smoke-Free</string>
    <string name="money_saved">Money Saved</string>
    <string name="cigarettes_avoided">Cigarettes Avoided</string>
    
    <!-- Common -->
    <string name="next">Next</string>
    <string name="back">Back</string>
    <string name="continue_action">Continue</string>
</resources>
`

### What's Next?

Once this basic setup works, continue with:

1. **Data Models** - User, SleepSession, Suggestion classes
2. **Database Setup** - Room database with repositories
3. **Onboarding Flow** - Multi-step user setup
4. **Dashboard** - Progress tracking and statistics
5. **Sleep Monitoring** - Mock sleep data and suggestions
6. **Audio System** - Text-to-speech and playback

**Let me know when you have the basic app running and I'll continue with the next phase!**
