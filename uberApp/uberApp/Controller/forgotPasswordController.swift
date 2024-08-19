//
//  forgotPasswordController.swift
//  uberApp
//
//  Created by Adrian Garcia on 12/08/24.
//

import UIKit

class forgotPasswordController: UIViewController {
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.text = ""
        
        // Configurar el botón de retroceso sin texto
                let backButton = UIBarButtonItem()
                backButton.title = ""
                navigationItem.backBarButtonItem = backButton

        // Do any additional setup after loading the view.
        // Configurar la acción del botón de "Sign Up"
                signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
    }
    
    @objc func signUpButtonTapped() {
           // Limpiar la pila de navegación y dirigir al usuario a la pantalla principal
           if let navigationController = navigationController {
               for controller in navigationController.viewControllers {
                   if controller is ViewController {
                       navigationController.popToViewController(controller, animated: true)
                       return
                   }
               }
           }
           
           // Si no se encuentra la pantalla principal, realizar push a registerController
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
           if let registerVC = storyboard.instantiateViewController(withIdentifier: "registerController") as? registerController {
               navigationController?.pushViewController(registerVC, animated: true)
           }
       }

}
