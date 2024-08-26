//
//  dashboardViewController.swift
//  uberApp
//
//  Created by Andrea Leal on 8/12/24.
//

import UIKit

class dashboardViewController: UIViewController, UISearchBarDelegate, UITabBarDelegate {

    
    @IBOutlet weak var searchBarPlace: UISearchBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBarPlace.delegate = self
        
    }
    
    
    @IBAction func buttonEx(_ sender: UIButton) {
        performSegue(withIdentifier: "mapsSegue", sender: "Hola")
    }
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBarPlace.resignFirstResponder()
        performSegue(withIdentifier: "mapsSegue", sender: self)
    }
    
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mapsSegue" {
             let mapsVC = segue.destination as! mapsViewController
            mapsVC.searchQuery = searchBarPlace.text
            
        }
    }
    
    

}
