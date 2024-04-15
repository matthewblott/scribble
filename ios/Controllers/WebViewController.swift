import Strada
import Turbo
import UIKit
import WebKit

class WebViewController: VisitableViewController, BridgeDestination {
    private var isScrollEnabled = true

    private lazy var bridgeDelegate = BridgeDelegate(
        location: visitableURL.absoluteString,
        destination: self,
        componentTypes: BridgeComponent.allTypes
    )

    convenience init(url: URL, isScrollEnabled: Bool) {
        self.init(url: url)
        self.isScrollEnabled = isScrollEnabled
    }

    // MARK: View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        bridgeDelegate.onViewDidLoad()
        visitableView.webView?.scrollView.isScrollEnabled = isScrollEnabled
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        bridgeDelegate.onViewWillAppear()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        bridgeDelegate.onViewDidAppear()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        bridgeDelegate.onViewWillDisappear()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        bridgeDelegate.onViewDidDisappear()
    }

    // MARK: Visitable

    override func visitableDidActivateWebView(_ webView: WKWebView) {
        bridgeDelegate.webViewDidBecomeActive(webView)
    }

    override func visitableDidDeactivateWebView() {
        bridgeDelegate.webViewDidBecomeDeactivated()
    }
}

