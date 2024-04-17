import WebKit

public class TurboConfig {
  public typealias WebViewBlock = (_ configuration: WKWebViewConfiguration) -> WKWebView

  public static let shared = TurboConfig()

  public var userAgent = "Turbo Native iOS"

  public var makeCustomWebView: WebViewBlock = { (configuration: WKWebViewConfiguration) in
    WKWebView(frame: .zero, configuration: configuration)
  }

  func makeWebView() -> WKWebView {
    makeCustomWebView(makeWebViewConfiguration())
  }

  private let sharedProcessPool = WKProcessPool()

  private init() {}

  private func makeWebViewConfiguration() -> WKWebViewConfiguration {
    let configuration = WKWebViewConfiguration()
    configuration.applicationNameForUserAgent = userAgent
    configuration.processPool = sharedProcessPool
    return configuration
  }
}
