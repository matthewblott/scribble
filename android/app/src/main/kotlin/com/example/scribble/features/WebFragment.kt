package com.example.scribble.features

import dev.hotwire.navigation.destinations.HotwireDestinationDeepLink
import dev.hotwire.navigation.fragments.HotwireWebFragment

@HotwireDestinationDeepLink(uri = "turbo://fragment/web")
open class WebFragment : HotwireWebFragment()