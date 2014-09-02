//
//  ViewController.swift
//  gitexercise
//
//  Created by Alex on 9/2/14.
//  Copyright (c) 2014 Alex Rice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alert : UIAlertController?
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        self.generateAlert()

    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        presentViewController(alert, animated: true) {
            () -> Void in
            println("Wowza!")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateAlert() {
        let alertController = UIAlertController(title: "Alerted!", message: "This is going to make a commit suck!", preferredStyle: UIAlertControllerStyle.Alert)
        
        var done = UIAlertAction(title: "Done", style: UIAlertActionStyle.Cancel, handler: nil)
        alertController.addAction(done)
        
        self.alert = alertController
    }


}

