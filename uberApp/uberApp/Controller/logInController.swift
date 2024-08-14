//
//  logInController.swift
//  uberApp
//
//  Created by Adrian Garcia on 12/08/24.
//

import UIKit

class logInController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Editing the texts in the controllerView
        passwordTextField.borderStyle = .none
        emailTextField.borderStyle = .none
        
        passwordTextField.layer.borderColor = UIColor(red: 210, green: 211, blue: 211, alpha: 0).cgColor
        emailTextField.layer.borderColor = UIColor(red: 210, green: 211, blue: 211, alpha: 0).cgColor
        
        passwordTextField.layer.borderWidth = 0.5
        emailTextField.layer.borderWidth = 0.5
        
        passwordTextField.layer.cornerRadius = 5.0
        emailTextField.layer.cornerRadius = 5.0
        
        passwordTextField.layer.masksToBounds = false
        emailTextField.layer.masksToBounds = false
        
        let paddingView = UIView(frame: CGRect(x:0, y: 0, width: 5, height: emailTextField.frame.height))
        emailTextField.leftView = paddingView
        emailTextField.leftViewMode = .always
        
        let paddingView1 = UIView(frame: CGRect(x:0, y: 0, width: 5, height: passwordTextField.frame.height))
        passwordTextField.leftView = paddingView1
        passwordTextField.leftViewMode = .always
        
        //Forgot password
        configureForgotPasswordButton()
    }
    
    private func configureForgotPasswordButton() {
            forgotPasswordButton.isUserInteractionEnabled = true
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(forgotPasswordTapped))
            forgotPasswordButton.addGestureRecognizer(tapGesture)
        }
        
        @objc private func forgotPasswordTapped() {
            print("Forgot Password label tapped")
            
            // Usar identificador de storyboard si ForgotPasswordController está en un Storyboard
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let forgotPasswordVC = storyboard.instantiateViewController(withIdentifier: "ForgotPasswordViewControllerID") as? forgotPasswordController else {
                print("Error: forgotPasswordController not found")
                return
            }
            
            navigationController?.pushViewController(forgotPasswordVC, animated: true)
        }
}
