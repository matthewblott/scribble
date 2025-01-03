package com.example.scribble.main

import android.os.Bundle
import androidx.appcompat.app.AppCompatDelegate
import androidx.navigation.NavController
import com.example.scribble.HOME_URL
import com.example.scribble.R
import com.google.android.material.appbar.MaterialToolbar
import dev.hotwire.navigation.activities.HotwireActivity
import dev.hotwire.navigation.navigator.NavigatorConfiguration

class MainActivity : HotwireActivity() {
  private lateinit var navController: NavController

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

    AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_FOLLOW_SYSTEM)
    setContentView(R.layout.activity_main)

    val toolbar = findViewById<MaterialToolbar>(R.id.toolbar)
    
    setSupportActionBar(toolbar)
  }

  override fun navigatorConfigurations() = listOf(
    NavigatorConfiguration(
      name = "main",
      startLocation = HOME_URL,
      navigatorHostId = R.id.main_navigator_host
    )
  )

  override fun onSupportNavigateUp(): Boolean {
    return navController.navigateUp()
        || super.onSupportNavigateUp()
  }
  
}
