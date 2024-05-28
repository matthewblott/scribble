plugins {
  id("com.android.application") version "8.4.1"
  id("org.jetbrains.kotlin.android") version "1.9.0"
  id("org.jetbrains.kotlin.plugin.serialization") version "1.9.10"
}

android {
  namespace = "com.example.scribble"
  compileSdk = 34
  defaultConfig {
    minSdk = 34
  }
  kotlinOptions {
    jvmTarget = "1.8"
  }
}

dependencies {
  implementation("androidx.activity:activity-compose:1.9.0")
  implementation("androidx.browser:browser:1.8.0")
  implementation("androidx.constraintlayout:constraintlayout:2.1.4")
  implementation("androidx.core:core-ktx:1.13.1")
  implementation("androidx.recyclerview:recyclerview:1.3.2")
  implementation("com.github.bumptech.glide:glide:4.16.0")
  implementation("com.google.android.material:material:1.12.0")
  implementation("dev.hotwire:strada:1.0.0-beta3")
  implementation("dev.hotwire:turbo:7.1.3")
  implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.6.3")
}
