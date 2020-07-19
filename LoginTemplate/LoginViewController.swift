//
//  ViewController.swift
//  LoginTemplate
//
// Created by Mahesh Rathod on 16/07/20.
//  Copyright © 2020 MR SQUARE. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var checkboxView: UIView!
    @IBOutlet weak var googleLoginView: UIView!
    @IBOutlet weak var facebookLoginView: UIView!
   
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblSignUp: UILabel!
    var isTap:Bool = true
    
    @IBOutlet weak var imgCheckmark: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setupUI()
    }

    @IBAction func gotoForgotPasswordScreen(_ sender: Any) {
        let forgotVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ForgotPasswordViewController") as? ForgotPasswordViewController
                  self.navigationController?.pushViewController(forgotVC!, animated: true)
    }
    @IBAction func gotoMainScreen(_ sender: Any) {
        
    }
    
    
    func setupUI(){
        UIManager.setupShadow(view: userNameView)
        UIManager.setupShadow(view: passwordView)
        UIManager.setupShadow(view: googleLoginView)
        UIManager.setupShadow(view: facebookLoginView)
        UIManager.setupButtonShadow(button: btnLogin)
        checkboxView.layer.borderColor = Colors.colorPrimary.cgColor
        checkboxView.layer.borderWidth = 1
        checkboxView.layer.cornerRadius = 4
        let title:NSAttributedString =  UIManager.lblColorChange(mainString: Strings.noAccountYetSignUp, subString: Strings.signUp)
        lblSignUp.attributedText = title
        let signUp = UITapGestureRecognizer(target: self, action: #selector(self.gotoSignUp(_:)))
        let checkboxTap = UITapGestureRecognizer(target: self, action: #selector(self.checkboxIsMark(_:)))
        lblSignUp.addGestureRecognizer(signUp)
        lblSignUp.isUserInteractionEnabled = true
        checkboxView.addGestureRecognizer(checkboxTap)
    }
    
    @objc func gotoSignUp(_ sender: UITapGestureRecognizer? = nil) {
        let signUpVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController
            self.navigationController?.pushViewController(signUpVC!, animated: true)
    }
    
    @objc func checkboxIsMark (_ sender: UITapGestureRecognizer? = nil){
        if isTap{
            let myImage = UIImage(named: "checkMarkIcon")
            let tintableImage = myImage!.withRenderingMode(.alwaysTemplate)
            imgCheckmark.image = tintableImage
            imgCheckmark.tintColor = Colors.colorPrimary
            isTap = false
        }
        else{
             let myImage = UIImage(named: "checkMarkIcon")
             let tintableImage = myImage!.withRenderingMode(.alwaysTemplate)
             imgCheckmark.image = tintableImage
             imgCheckmark.tintColor = UIColor.white
             isTap = true
        }
    }
}



