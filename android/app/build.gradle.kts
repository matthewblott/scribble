plugins {
  id("com.android.application") version "8.7.3"
  id("org.jetbrains.kotlin.android") version "1.9.0"
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
  implementation("dev.hotwire:core:1.0.0")
  implementation("dev.hotwire:navigation-fragments:1.0.0")
  //noinspection GradleDependency
  implementation(platform("androidx.compose:compose-bom:2023.10.01"))
  implementation("androidx.constraintlayout:constraintlayout:2.2.0")
  implementation("com.google.android.flexbox:flexbox:3.0.0")
}
