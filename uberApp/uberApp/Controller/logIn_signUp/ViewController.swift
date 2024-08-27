//
//  ViewController.swift
//  uberApp
//
//  Created by Adrian Garcia on 8/08/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Configurar el botón de retroceso sin texto
                let backButton = UIBarButtonItem()
                backButton.title = ""
                navigationItem.backBarButtonItem = backButton
        self.navigationController?.navigationBar.tintColor = UIColor.red
    }

    @IBAction func logInButton(_ sender: UIButton) {
    }
    @IBAction func registerButton(_ sender: UIButton) {
    }
    
}

