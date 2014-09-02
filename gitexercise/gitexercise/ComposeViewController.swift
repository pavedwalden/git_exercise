//
//  ComposeViewController.swift
//  gitexercise
//
//  Created by Leonardo Lee on 9/2/14.
//  Copyright (c) 2014 Alex Rice. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderValue: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("This should pop up!")
        
        self.slider.addTarget(self, action: "sliderChanged:", forControlEvents: UIControlEvents.ValueChanged)

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.sliderValue.text = "\(self.slider.value)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func sliderChanged(sender : UISlider!) {
        self.sliderValue.text = "\(sender.value)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
