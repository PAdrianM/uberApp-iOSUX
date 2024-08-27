//
//  verificationCodeController.swift
//  uberApp
//
//  Created by Adrian Garcia on 19/08/24.
//

import UIKit

class verificationCodeController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNumberText: UITextField!
    @IBOutlet weak var thirdNmberText: UITextField!
    @IBOutlet weak var secondNumberText: UITextField!
    @IBOutlet weak var fourthNumberText: UITextField!
    
    @IBOutlet weak var verifyButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButton = UIBarButtonItem()
                backButton.title = ""
                navigationItem.backBarButtonItem = backButton

        // Establecer el delegado de cada UITextField
        firstNumberText.delegate = self
                secondNumberText.delegate = self
                thirdNmberText.delegate = self
                fourthNumberText.delegate = self
            }
            
            // Método delegado para limitar a un solo dígito
            func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
                let currentText = textField.text ?? ""
                let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
                return newText.count <= 1
            }

}

