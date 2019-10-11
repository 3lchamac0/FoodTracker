//
//  ViewController.swift
//  FoodTracker
//
//  Created by formando on 11/10/2019.
//  Copyright © 2019 formando. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameTextField.delegate = self
    }
    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealnameLabel.text = "Default Text"
    }

}

