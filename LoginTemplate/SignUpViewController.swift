//
//  SignUpViewController.swift
//  LoginTemplate
//
//  Created by Mahesh Rathod on 16/07/20.
//  Copyright © 2020 MR SQUARE. All rights reserved.
//

import Foundation
import UIKit

class SignUpViewController : UIViewController{
    @IBOutlet weak var usenameView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var confirmPaaswordView: UIView!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var lblSignIn: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func gotoPreviousViewController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setupUI()
    }
    
    func setupUI(){
           UIManager.setupShadow(view: usenameView)
           UIManager.setupShadow(view: passwordView)
           UIManager.setupShadow(view: emailView)
           UIManager.setupShadow(view: confirmPaaswordView)
           UIManager.setupButtonShadow(button: btnSignUp)
           let title:NSAttributedString =  UIManager.lblColorChange(mainString: Strings.alreadyAccount, subString: Strings.signIn)
           lblSignIn.attributedText = title
           let signlblTap = UITapGestureRecognizer(target: self, action: #selector(self.gotoSignIn(_:)))
           lblSignIn.addGestureRecognizer(signlblTap)
           lblSignIn.isUserInteractionEnabled = true
       }
    
    @IBAction func gotoMainScreen(_ sender: Any) {
        
    }
    
    @objc func gotoSignIn(_ sender: UITapGestureRecognizer? = nil) {
          let signInVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
              self.navigationController?.pushViewController(signInVC!, animated: true)
      }
}
