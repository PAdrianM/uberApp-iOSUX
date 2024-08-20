//
//  dashboardViewController.swift
//  uberApp
//
//  Created by Andrea Leal on 8/12/24.
//

import UIKit

class dashboardViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchBarTrip: UISearchBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBarTrip.delegate = self
        searchBarTrip.isUserInteractionEnabled = true
        //searchBarTrip.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
        DispatchQueue.main.async {
            self.searchBarTrip.becomeFirstResponder()
        }
        
    }
    
    @IBAction func buttonEx(_ sender: UIButton) {
        performSegue(withIdentifier: "mapsSegue", sender: "Hola")
    }
    
    func searchBarButtonClicked(_ searchBar: UISearchBar) {
        guard let query = searchBar.text, !query.isEmpty else {return}
        performSegue(withIdentifier: "mapsSegue", sender: query)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mapsSegue" {
            if let mapsVC = segue.destination as? mapsViewController, let searchQuery = sender as? String {
                mapsVC.searchQuery = searchQuery
            }
        }
    }

}
