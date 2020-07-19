//
//  VerifyViewController.swift
//  LoginTemplate
//
//  Created by Mahesh Rathod on 16/07/20.
//  Copyright © 2020 MR SQUARE. All rights reserved.
//

import Foundation
import UIKit

class VerifyViewController : UIViewController{
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var thirdView: UIView!
    
    @IBOutlet weak var fourView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    @IBOutlet weak var btnVerify: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        UIManager.setupShadowForOtp(view: firstView)
        UIManager.setupShadowForOtp(view: secondView)
        UIManager.setupShadowForOtp(view: thirdView)
        UIManager.setupShadowForOtp(view: fourView)
        UIManager.setupButtonShadow(button: btnVerify)
    }
    
    @IBAction func verifyAction(_ sender: Any) {
        
         let PopupVc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "VerifyPopViewController") as? VerifyPopViewController
        
        self.addChild(PopupVc!)
        self.view.addSubview(PopupVc!.view)
        PopupVc!.didMove(toParent: self)
        
    }
    @IBAction func backtoPreviousViewController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
