//
//  ViewController.swift
//  tweetings
//
//  Created by Helen Stephanie Kim on 3/26/15.
//  Copyright (c) 2015 Chrissy Ha. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toTweet(sender: AnyObject) {
        let tweetVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        tweetVC.setInitialText("iOS development commences! #cocoaconf")
        
        self.presentViewController(tweetVC, animated: true, completion: nil)
    }
    
    @IBAction func loadMyTweets(sender: AnyObject) {
        
        if let twitterURL = NSURL(string: "http://twitter.com/chrissyyha") {
            let request = NSURLRequest(URL:twitterURL)
            
            viewTweets.loadRequest(request)
        }
    }
    
    @IBAction func showShareSheet(sender:AnyObject) {
        let shareSheet = UIActivityViewController(activityItems: "This is my share sheet!", applicationActivities: nil)
        
    }
    
    @IBOutlet weak var viewTweets: UIWebView!
}

