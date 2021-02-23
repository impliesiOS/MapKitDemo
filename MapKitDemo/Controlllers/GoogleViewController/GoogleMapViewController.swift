//
//  GoogleMapViewController.swift
//  MapKitDemo
//
//  Created by iMac on 19/02/21.
//

import UIKit
import GoogleMaps

class GoogleMapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
               let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
               self.view.addSubview(mapView)
        // Do any additional setup after loading the view.
        
        // Creates a marker in the center of the map.
               let marker = GMSMarker()
               marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
               marker.title = "Sydney"
               marker.snippet = "Australia"
               marker.map = mapView
    }


}
