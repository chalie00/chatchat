//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        //Account add to Firebase
        if let email = emailTextfield.text, let pw = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: pw) {
                result, error in
                if error != nil {
                    print("Register Error")
                    print("Rerister Error = \(error?.localizedDescription as Any)")
                } else {
                    print("Account Create Success")
                    self.performSegue(withIdentifier: "gotoChatFromRegister", sender: nil)
                }
            }
        }
    }
    
}//End Of The Class

