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
    }


    @IBAction func enterButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Dashboard", bundle: nil)
        
        guard let dashboardVC = storyboard.instantiateViewController(withIdentifier: "dashboardViewController") as? dashboardViewController else{
            return
        }
        
        dashboardVC.modalPresentationStyle = .fullScreen
        dashboardVC.modalTransitionStyle = .crossDissolve
        
        self.present(dashboardVC, animated: true, completion: nil)
    }
}

