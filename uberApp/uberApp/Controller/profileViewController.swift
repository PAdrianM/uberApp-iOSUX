//
//  profileViewController.swift
//  uberApp
//
//  Created by Andrea Leal on 8/20/24.
//

import UIKit

class profileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var optionsCuenta: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        optionsCuenta.dataSource = self
        optionsCuenta.delegate = self
        optionsCuenta.register(UINib(nibName: "CuentaTableViewCell", bundle: nil), forCellReuseIdentifier: "perfilOpcionCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellOptionProfile = optionsCuenta.dequeueReusableCell(withIdentifier: "perfilOpcionCell", for: indexPath) as! CuentaTableViewCell
        
        cellOptionProfile.textOption.text = "Metodo de pago"
        
        
        return cellOptionProfile
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionada: \(indexPath)")
    }
    

}
