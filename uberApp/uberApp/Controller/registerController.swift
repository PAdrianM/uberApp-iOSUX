//
//  registerController.swift
//  uberApp
//
//  Created by Adrian Garcia on 12/08/24.
//

import UIKit

class registerController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var checkButtonTermsAndConditions: UIButton!
    
    
    // Variable para rastrear si el botón está marcado
       private var isTermsAccepted = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.text = ""
        passwordTextField.text = ""
        confirmPasswordTextField.text = ""
        
        // Configurar el botón de retroceso sin texto
                let backButton = UIBarButtonItem()
                backButton.title = ""
                navigationItem.backBarButtonItem = backButton
        
          checkButtonTermsAndConditions.setImage(UIImage(systemName: "square.fill"), for: .normal)
          checkButtonTermsAndConditions.tintColor = .red
          
          // Añadir acción para cuando se toque el botón
          checkButtonTermsAndConditions.addTarget(self, action: #selector(didTapCheckButton), for: .touchUpInside)
    }
    
    @objc private func didTapCheckButton() {
           // Alternar el estado de aceptación de términos
           isTermsAccepted.toggle()
           
           // Cambiar la imagen del botón según el estado
           let imageName = isTermsAccepted ? "checkmark.square.fill" : "square"
        checkButtonTermsAndConditions.setImage(UIImage(systemName: imageName), for: .normal)
        
       }
    

}
