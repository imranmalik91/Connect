//
//  ConnectWebView.swift
//  Connect
//
//  Created by imran malik on 27/08/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    let config: WKWebViewConfiguration = {
        let configuration = WKWebViewConfiguration()
        let processPool = WKProcessPool()
        configuration.processPool = processPool
        return configuration
    }()

    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        let webview = WKWebView(frame: .zero, configuration: config)
        webview.uiDelegate = context.coordinator
        webview.navigationDelegate = context.coordinator
        webview.load(request())
        return webview
    }

    func updateUIView(_ webview: WKWebView, context: UIViewRepresentableContext<WebView>) {
        webview.load(request())
    }

    func makeCoordinator() -> WebCoordinator {
        return WebCoordinator(webView: self)
    }

    func request() -> URLRequest {
        var request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        if let cookies = HTTPCookieStorage.shared.cookies(for: url) {
            request.allHTTPHeaderFields = HTTPCookie.requestHeaderFields(with: cookies)
        }
        return request
    }
}

final class WebCoordinator: NSObject, WKUIDelegate, WKNavigationDelegate {
    let webView: WebView

    init(webView: WebView) {
        self.webView = webView
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let request = navigationAction.request
        let url = request.url

        webView.configuration.websiteDataStore.httpCookieStore.getAllCookies { (cookies) in
            HTTPCookieStorage.shared.setCookies(cookies, for: url, mainDocumentURL: nil)
        }

        decisionHandler(.allow)
    }
}


struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "https://www.google.com")!)
    }
}

