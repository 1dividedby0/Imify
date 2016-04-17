//
//  WikipediaViewController.swift
//  imagepicker
//
//  Created by Dhruv Mangtani on 4/16/16.
//  Copyright © 2016 Sara Robinson. All rights reserved.
//

import UIKit

class WikipediaViewController: UIViewController {
    var name: String!
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL (string: name);
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
