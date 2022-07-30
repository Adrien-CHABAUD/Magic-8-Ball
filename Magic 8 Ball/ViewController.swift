//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var instructionsLabel: UILabel!
    @IBOutlet weak var askAndShakeLabel: UILabel!
    
    // Alows to run the code inside the function as soon as the view is
    // loaded, before it is displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the image "space_background" as background of the app
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "space_background")!)
        
        // Set an image in the imageView
        imageView.image = UIImage(named: "ball6")
        
        // Hide/show the labels
        instructionsLabel.isHidden = false
        askAndShakeLabel.isHidden = true
    }
    
    //Notifies the receiver that it's about to become first responder
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    // Tells the responder that an event has ended
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            // Select an image randomly to display
            imageView.image = UIImage(named: "ball\(Int.random(in: 1...5))")
            
            // Hide/show labels
            askAndShakeLabel.isHidden = false
            instructionsLabel.isHidden = true
            
        }
    }

}

