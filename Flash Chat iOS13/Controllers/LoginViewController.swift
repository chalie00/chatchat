//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        //Sign in to Firebase
        if let email = emailTextfield.text, let pw = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: pw) {
                returl, error in
                if error != nil {
                    print("Sign In Error = \(error?.localizedDescription as Any)")
                    } else {
                    print("Sign In Access")
                    self.performSegue(withIdentifier: "gotoChatFromLogin", sender: nil)
                    }

            }
        }
    }
    
}//End Of The Class
                    
