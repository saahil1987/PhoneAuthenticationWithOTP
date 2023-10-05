//
//  ViewController.swift
//  PhoneAuthenticationWithOTP
//
//  Created by yapapp on 05/10/23.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var OTPText: UITextField!
    
    var verificationId = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        @IBAction func generateOTPBtn(_ sender: UIButton) {
            Auth.auth().languageCode = "en"
            
            PhoneAuthProvider.provider().verifyPhoneNumber( numberText.text ?? "", uiDelegate: nil) { (id, error) in
                 if let error = error {
                   print(error.localizedDescription)
                   return
                 }
                 self.verificationId = id!
               }
        }
}
