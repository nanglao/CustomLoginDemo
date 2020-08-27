//
//  ViewController.swift
//  CustomLoginDemo
//
//  Created by Mavis Lao on 27/08/2020.
//  Copyright © 2020 Mavis Lao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements() {
        //style the elements
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
    }


}

