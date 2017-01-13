//
//  ViewController.swift
//  AdCampainChecker
//
//  Created by Sudheendra K Kaanugovi on 1/12/17.
//  Copyright © 2017 Sudheendra K Kaanugovi. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    var safari: SFSafariViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let safari = SFSafariViewController(url: NSURL(string: "http://localhost:8000/")! as URL)
        safari.delegate = self
        safari.modalPresentationStyle = .overCurrentContext
        safari.view.alpha = 0.0
        
        self.safari = safari
        
        
        
//        if let cookies = HTTPCookieStorage.shared.cookies {
//            for cookie in cookies {
//                print(cookie.name + "    " + cookie.value)
//            }
//        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let safari = safari {
            present(safari, animated: false, completion: nil)
        }
    }
    
    
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        dismiss(animated: false, completion: nil)
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        self.safari = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

