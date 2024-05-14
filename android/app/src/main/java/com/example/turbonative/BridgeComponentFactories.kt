package com.example.turbonative

import dev.hotwire.strada.BridgeComponentFactory

val bridgeComponentFactories = listOf(
  BridgeComponentFactory("form", ::FormComponent),
)
