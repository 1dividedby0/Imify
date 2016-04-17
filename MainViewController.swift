//
//  MainViewController.swift
//  imagepicker
//
//  Created by Dhruv Mangtani on 4/16/16.
//  Copyright © 2016 Sara Robinson. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var names: [String]!
    @IBOutlet weak var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        if names.count > 0{
        segment.setTitle(names[0], forSegmentAtIndex: 0)
        }
        if names.count>0{
        segment.setTitle(names[1], forSegmentAtIndex: 1)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buy(sender: AnyObject) {
        self.performSegueWithIdentifier("toAmazon", sender: self)
    }

    @IBAction func whatIsThis(sender: AnyObject) {
        self.performSegueWithIdentifier("toWiki", sender: self)
    }
    
    @IBAction func instagram(sender: AnyObject) {
        self.performSegueWithIdentifier("toInsta", sender: self)
    }
    
    @IBAction func reddit(sender: AnyObject) {
        self.performSegueWithIdentifier("toFacebook", sender: self)
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toWiki"{
            let vc = segue.destinationViewController as! WikipediaViewController
            vc.name = "https://en.wikipedia.org/wiki/\(segment.titleForSegmentAtIndex(segment.selectedSegmentIndex)!)"
        }else if segue.identifier == "toAmazon"{
            let vc = segue.destinationViewController as! WikipediaViewController
            vc.name = "http://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=\(segment.titleForSegmentAtIndex(segment.selectedSegmentIndex)!)"
        }else if segue.identifier == "toInsta"{
            let vc = segue.destinationViewController as! WikipediaViewController
            vc.name = "https://www.instagram.com/explore/tags/\(segment.titleForSegmentAtIndex(segment.selectedSegmentIndex)!)"
        }else if segue.identifier == "toFacebook"{
            let vc = segue.destinationViewController as! WikipediaViewController
            vc.name = "https://www.facebook.com/search/top/?q=\(segment.titleForSegmentAtIndex(segment.selectedSegmentIndex)!)"
        }
    }
    

}
