//
//  ForgotPassword.swift
//  LoginTemplate
//
//   Created by Mahesh Rathod on 16/07/20.
//  Copyright © 2020 MR SQUARE. All rights reserved.
//

import Foundation
import UIKit

class ForgotPasswordViewController:UIViewController{
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var btnSend: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setupUI()
    }
    
    func setupUI(){
        UIManager.setupShadow(view: emailView)
        UIManager.setupButtonShadow(button: btnSend)
    }
    
    @IBAction func gotoPriviousViewController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func sendButtonAction(_ sender: Any) {
        let verifyVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "VerifyViewController") as? VerifyViewController
                     self.navigationController?.pushViewController(verifyVC!, animated: true)
    }
}
