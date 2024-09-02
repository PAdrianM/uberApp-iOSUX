//
//  profileViewController.swift
//  uberApp
//
//  Created by Andrea Leal on 8/20/24.
//

import UIKit

class profileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var optionsCuenta: UITableView!
    
    @IBOutlet weak var userImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.layer.cornerRadius = 90
        optionsCuenta.dataSource = self
        optionsCuenta.delegate = self
        optionsCuenta.register(UINib(nibName: "CuentaTableViewCell", bundle: nil), forCellReuseIdentifier: "perfilOpcionCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellOptionProfile = optionsCuenta.dequeueReusableCell(withIdentifier: "perfilOpcionCell", for: indexPath) as! CuentaTableViewCell
        
        cellOptionProfile.optionName.text = "Metodo de pago"
        
        return cellOptionProfile
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionada: \(indexPath)")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    

}
