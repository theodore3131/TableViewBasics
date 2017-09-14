//
//  webViewController.swift
//  TableViewBasics
//
//  Created by zhiwei xu on 14/09/2017.
//  Copyright © 2017 zhiwei xu. All rights reserved.
//

import UIKit
import WebKit

class webViewController: UIViewController {

    var webLinks: [String] = ["https://baike.baidu.com/item/Canada","https://baike.baidu.com/item/France","https://baike.baidu.com/item/Germany","https://baike.baidu.com/item/America"]
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadPage()
        webViewDidStartLoad(webView: webView)
        webViewDidFinishLoad(webView: webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadPage() {
        let myURL = URL(string: webLinks[webIndex])
        let myURLRequest:URLRequest = URLRequest(url:(myURL)!)
        webView.loadRequest(myURLRequest)
    }
    
    func webViewDidStartLoad(webView : UIWebView) {
        myActivityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(webView : UIWebView){
        myActivityIndicator.stopAnimating()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
