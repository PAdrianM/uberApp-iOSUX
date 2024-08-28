//
//  actividadViewController.swift
//  uberApp
//
//  Created by Andrea Leal on 8/20/24.
//

import UIKit

class actividadViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableViewActivity: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewActivity.register(UINib(nibName: "activityCardTableViewCell", bundle: nil), forCellReuseIdentifier: "ActivityCell")
        
        tableViewActivity.delegate = self
        tableViewActivity.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableViewActivity.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath) as! activityCardTableViewCell
        
        cell.namePlaceLabel.text = "Centro Comercial Miraflores"
        cell.datePlaceLabel.text = "12 ago 2024 * 08:36 a. m."
        cell.pricePlaceLabel.text = "GTQ 56.23"
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionada: \(indexPath)")
    }
    
    

}
