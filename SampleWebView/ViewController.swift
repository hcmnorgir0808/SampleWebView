//
//  ViewController.swift
//  SampleWebView
//
//  Created by 岩本康孝 on 2022/02/07.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let request = URLRequest(url: URL(string: "http://www.yahoo.co.jp")!)
        webView.navigationDelegate = self
        webView.load(request)

    }

    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
}

extension ViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        // 表示しているページのURL
        print(webView.url?.absoluteString ?? "")
        // 表示しているページのタイトル
        self.title = webView.title ?? ""
    }
}

