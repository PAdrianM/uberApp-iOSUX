//
//  newPasswordController.swift
//  uberApp
//
//  Created by Adrian Garcia on 19/08/24.
//

import UIKit

class newPasswordController: UIViewController {
    
    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Configurar la acción del botón de "Sign Up"
                submitButton.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)
    }
    
    @objc func submitButtonTapped() {
        // Limpiar la pila de navegación y dirigir al usuario al logInController
        if let navigationController = navigationController {
            for controller in navigationController.viewControllers {
                if controller is logInController { // Cambiar 'ViewController' por 'logInController'
                    navigationController.popToViewController(controller, animated: true)
                    return
                }
            }
        }
        
        // Si no se encuentra el logInController, realizar push a logInController
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let loginVC = storyboard.instantiateViewController(withIdentifier: "logInController") as? logInController {
            navigationController?.pushViewController(loginVC, animated: true)
        }
    }
}
