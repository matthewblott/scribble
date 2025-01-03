package com.example.scribble

import com.example.scribble.components.NewButton
import com.example.scribble.components.SettingsButton
import dev.hotwire.core.BuildConfig
import dev.hotwire.core.bridge.KotlinXJsonConverter
import dev.hotwire.core.config.Hotwire
import dev.hotwire.core.turbo.config.PathConfiguration
import dev.hotwire.navigation.config.defaultFragmentDestination
import dev.hotwire.navigation.config.registerFragmentDestinations
import dev.hotwire.navigation.config.registerRouteDecisionHandlers
import dev.hotwire.navigation.routing.AppNavigationRouteDecisionHandler
import dev.hotwire.navigation.routing.BrowserTabRouteDecisionHandler

import com.example.scribble.features.WebFragment
import com.example.scribble.features.WebHomeFragment
import dev.hotwire.core.bridge.BridgeComponentFactory
import dev.hotwire.navigation.config.registerBridgeComponents

class Application : android.app.Application() {
  override fun onCreate() {
    super.onCreate()
    configureApp()
  }

  private fun configureApp(){
    Hotwire.loadPathConfiguration(
      context = this,
      location = PathConfiguration.Location(
        assetFilePath = "json/configuration.json"
      )
    )

    Hotwire.defaultFragmentDestination = WebFragment::class

    Hotwire.registerFragmentDestinations(
      WebFragment::class,
      WebHomeFragment::class,
    )

    Hotwire.registerBridgeComponents(
      BridgeComponentFactory("new", ::NewButton),
      BridgeComponentFactory("settings", ::SettingsButton),
    )
    Hotwire.registerRouteDecisionHandlers(
      AppNavigationRouteDecisionHandler(),
      BrowserTabRouteDecisionHandler()
    )

    Hotwire.config.debugLoggingEnabled = BuildConfig.DEBUG
    Hotwire.config.webViewDebuggingEnabled = BuildConfig.DEBUG
    Hotwire.config.jsonConverter = KotlinXJsonConverter()
    Hotwire.config.userAgent = Hotwire.config.userAgentSubstring()
  }

}