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
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.text = ""
        passwordTextField.text = ""
        
        // Configurar el botón de retroceso sin texto
                let backButton = UIBarButtonItem()
                backButton.title = ""
                navigationItem.backBarButtonItem = backButton
        
    }
    
}
