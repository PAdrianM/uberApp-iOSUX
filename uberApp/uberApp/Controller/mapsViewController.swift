//
//  mapsViewController.swift
//  uberApp
//
//  Created by Andrea Leal on 8/20/24.
//

import UIKit
import MapKit

class mapsViewController: UIViewController {
    
    var searchQuery: String?

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let initialLocation = CLLocation(latitude: 37.7749, longitude: -122.4194)
        centerMapOnLocation(location: initialLocation)
        
        if let query = searchQuery {
            print("Realizando busqueda para: \(query)")
        }
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let regionRadius: CLLocationDistance = 1000
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        mapView.setRegion(coordinateRegion, animated: true)
    }
    

   
}
