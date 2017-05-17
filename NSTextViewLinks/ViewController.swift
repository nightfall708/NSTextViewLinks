//
//  ViewController.swift
//  NSTextViewLinks
//
//  Created by Tal Shrestha on 17/05/2017.
//  Copyright © 2017 None. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.textView.isAutomaticDataDetectionEnabled = true
        self.textView.isAutomaticLinkDetectionEnabled = true
        
        self.textView.string = "http://www.google.com"
        self.textView.checkTextInDocument(nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.textView.string = "This is a test."
//            self.textView.checkTextInDocument(nil)
        }

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

