module TurboNativeHelper
  PAGE_TITLE = "Scribble"

  def page_title
    if turbo_native_app?
      content_for(:turbo_native_title) || content_for(:title) || PAGE_TITLE
    else
      content_for(:title) || PAGE_TITLE
    end
  end

  def platform_identifier
    "turbo-native" if turbo_native_app?
  end

end

