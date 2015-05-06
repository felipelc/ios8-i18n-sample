//
//  ViewController.swift
//  ParseI18nSample
//
//  Created by Felipe Leal Coutinho on 06/05/15.
//  Copyright (c) 2015 Felipe Leal Coutinho. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class ViewController: UIViewController, PFSignUpViewControllerDelegate {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if PFUser.currentUser() == nil { // User is not logged in
            presentSignUp()
        }
    }
    
    private func presentSignUp() {
        let signUpVC = PFSignUpViewController()
        signUpVC.delegate = self
        presentViewController(signUpVC, animated: true, completion: nil)
    }
    
    func signUpViewController(signUpController: PFSignUpViewController, didSignUpUser user: PFUser) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func logOut(sender: UIButton) {
        PFUser.logOut()
        presentSignUp()
    }
}

