//
//  Utilities.swift
//  CustomLogin Demo
//
//  Created by Mavis Lao on 26/08/2020.
//  Copyright © 2020 Mavis Lao. All rights reserved.
//
import Foundation
import UIKit

class Utilities {

    static func styleTextField(_ textfield:UITextField) {
        
        //Create the bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0,y: textfield.frame.height - 2,width: textfield.frame.width,height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 48/255,green: 173/255,blue: 99/255,alpha: 1).cgColor
        
        //remove bordr on textfield
        textfield.borderStyle = .none
        
        //add the line to the text field
        textfield.layer.addSublayer(bottomLine)
    }

    static func styleFilledButton(_ button:UIButton) {
        
        //filled rounded corner style
        button.backgroundColor = UIColor.init(red: 48/255,green: 173/255,blue: 99/255,alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
        
    }
    
    static func styleHollowButton(_ button:UIButton){
        
        //Hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }
     
    static func isPasswordValid(_ password : String)-> Bool{

        let passwordTest = NSPredicate(format: "SELF MATCHES %@","^(?=.*[a-z])(?=.*[$@$#!%*?&]) [A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
