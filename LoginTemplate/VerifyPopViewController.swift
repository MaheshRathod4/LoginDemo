//
//  VerifyPopViewController.swift
//  LoginTemplate
//
//  Created by pc on 17/07/20.
//  Copyright © 2020 pc. All rights reserved.
//

import Foundation
import UIKit

class VerifyPopViewController : UIViewController{
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(true)
           popUpView.layer.cornerRadius = 10
           UIManager.setupButtonShadow(button: btnLogin)
       }
    
    @IBAction func btnLoginActions(_ sender: Any) {
        
        self.view.removeFromSuperview()
          let signInVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
                    self.navigationController?.pushViewController(signInVC!, animated: true)
    }
}
