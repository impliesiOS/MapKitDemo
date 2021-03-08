//
//  MapViewController.swift
//  MapKitDemo
//
//  Created by iMac on 19/02/21.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController,CLLocationManagerDelegate{
    
    let locationManager = CLLocationManager()

//MARK:- outlets
    
    @IBOutlet weak var mapView: MKMapView!
    
    //MARK:- Controller Life Cycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        var coordinateArray: [CLLocationCoordinate2D] = []
            let destination1 = CLLocationCoordinate2DMake(22.3039, 70.8022)
            let destination2 = CLLocationCoordinate2DMake(23.0225, 72.5714)
            coordinateArray.append(destination1)
            coordinateArray.append(destination2)

            let polygon = MKPolyline(coordinates: coordinateArray, count: coordinateArray.count)
            self.mapView.addOverlay(polygon)
        
        
        self.locationManager.requestAlwaysAuthorization()

            // For use in foreground
            self.locationManager.requestWhenInUseAuthorization()

            if CLLocationManager.locationServicesEnabled() {
                locationManager.delegate = self
                locationManager.desiredAccuracy = kCLLocationAccuracyBest
                locationManager.startUpdatingLocation()
            }

            mapView.delegate = self
            mapView.mapType = .standard
            mapView.isZoomEnabled = true
            mapView.isScrollEnabled = true

            if let coor = mapView.userLocation.location?.coordinate{
                mapView.setCenter(coor, animated: true)
            }
    }

}



//MARK:- Mapkit delegate methode

extension MapViewController: MKMapViewDelegate {

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        //CLLocationCoordinate2D
        mapView.mapType = MKMapType.standard

        let span = MKCoordinateSpan(latitudeDelta: 0.50,longitudeDelta: 0.50)
        let region = MKCoordinateRegion(center: locValue, span: span)
        mapView.setRegion(region, animated: true)

        let annotation = MKPointAnnotation()
        annotation.coordinate = locValue
        annotation.title = "Karan Chodavadiya"
        annotation.subtitle = "current location"
        mapView.addAnnotation(annotation)
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay.isKind(of: MKPolyline.self){
            let polylineRenderer = MKPolylineRenderer(overlay: overlay)
                polylineRenderer.fillColor = UIColor.blue
                polylineRenderer.strokeColor = UIColor.blue
                polylineRenderer.lineWidth = 2
            
            return polylineRenderer
     }
        return MKOverlayRenderer(overlay: overlay)
    }
}
