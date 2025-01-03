plugins {
  id("com.android.application") version "8.7.3"
  id("org.jetbrains.kotlin.android") version "1.9.0"
  id("org.jetbrains.kotlin.plugin.serialization") version "1.9.10"
}

buildscript {
  repositories {
    google()
    mavenCentral()
  }
}

android {
  namespace = "com.example.scribble"
  compileSdk = 34
  
  defaultConfig {
    minSdk = 34
  }
  
  buildFeatures {
    viewBinding = true
  }
  
  kotlinOptions {
    jvmTarget = JavaVersion.VERSION_18.toString()
  }
  
  compileOptions {
    sourceCompatibility = JavaVersion.VERSION_18
    targetCompatibility = JavaVersion.VERSION_18
  }
  
}

dependencies {
//  implementation(platform("androidx.compose:compose-bom:2023.10.01"))
  implementation("androidx.appcompat:appcompat:1.7.0")
  implementation("androidx.browser:browser:1.8.0")
  //noinspection GradleDependency
  implementation("androidx.constraintlayout:constraintlayout:2.1.4")
//  implementation("androidx.constraintlayout:constraintlayout:2.2.0")
  implementation("com.google.android.flexbox:flexbox:3.0.0")
  implementation("dev.hotwire:core:1.0.0")
  implementation("dev.hotwire:navigation-fragments:1.0.0")
  implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.6.0")
}

repositories {
  google()
  mavenCentral()
}
