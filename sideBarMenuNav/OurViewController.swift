//
//  OurViewController.swift
//  sideBarMenuNav
//
//  Created by Stacks and Queues on 27/06/16.
//  Copyright © 2016 Stacks and Queues. All rights reserved.
//

import UIKit

class OurViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }

        // Do any additional setup after loading the view.
    }

    
}
