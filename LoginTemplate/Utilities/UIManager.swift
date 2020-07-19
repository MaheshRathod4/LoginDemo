//
//  Extentions.swift
//  LoginTemplate
//
// Created by Mahesh Rathod on 16/07/20.
//  Copyright © 2020 MR SQUARE. All rights reserved.
//

import Foundation
import UIKit

class UIManager{

    static func setupShadow(view:UIView){
        view.layer.cornerRadius = 25
        view.layer.shadowColor = UIColor(hue: 0.643, saturation: 0.061, brightness: 0.906, alpha: 1).cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0);
        view.layer.shadowOpacity = 1
        view.layer.shadowRadius = 4
        
    }
    
    static func setupShadowForOtp(view:UIView){
           view.layer.cornerRadius = 10
           view.layer.shadowColor = UIColor(hue: 0.643, saturation: 0.061, brightness: 0.906, alpha: 1).cgColor
           view.layer.shadowOffset = CGSize(width: 0, height: 0);
           view.layer.shadowOpacity = 1
           view.layer.shadowRadius = 4
           
       }
    
    static func setupButtonShadow(button:UIButton){
          button.layer.cornerRadius = 25
          button.layer.shadowColor = Colors.colorPrimary.cgColor
          button.layer.shadowOffset = CGSize(width: 0, height: 0);
          button.layer.shadowOpacity = 0.7
          button.layer.shadowRadius = 4
          
      }
    
    
    
    
    
    static func lblColorChange(mainString:String,subString:String) -> NSAttributedString{
        let stringValue = mainString
               let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: stringValue)
               attributedString.setColor(color: Colors.colorPrimary, forText: subString)
        
        return attributedString
        
    }
}

extension NSMutableAttributedString {
    func setColor(color: UIColor, forText stringValue: String) {
       let range: NSRange = self.mutableString.range(of: stringValue, options: .caseInsensitive)
        self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
    }

}
