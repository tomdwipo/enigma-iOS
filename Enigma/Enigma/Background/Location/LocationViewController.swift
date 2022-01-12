//
//  LocationViewController.swift
//  Enigma
//
//  Created by RATAMATE on 12/01/22.
//

import UIKit
import CoreLocation
import MapKit
import Kingfisher


class LocationViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!
    
    private var locations: [MKPointAnnotation] = []
    
    private lazy var locationManager: CLLocationManager = {
        let manager = CLLocationManager()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        manager.allowsBackgroundLocationUpdates = true
        return manager
    }()
    
    @IBAction func enabledChanged(_ sender: UISwitch) {
        if sender.isOn {
            locationManager.startUpdatingLocation()
        } else {
            locationManager.stopUpdatingLocation()
        }
    }
}

// MARK: - CLLocationManagerDelegate
extension LocationViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let mostRecentLocation = locations.last else {
            return
        }
        let annotation = MKPointAnnotation()
        annotation.coordinate = mostRecentLocation.coordinate
        
        self.locations.append(annotation)
        
        
        print("state \(UIApplication.shared.applicationState.description)")
        if UIApplication.shared.applicationState == .active {
            mapView.showAnnotations(self.locations, animated: true)
        }
        if  UIApplication.shared.applicationState == .background {
            print("App is backgrounded. New location is \(mostRecentLocation) state = \(UIApplication.shared.applicationState.description)" )
        }
        
    }
    
}


extension UIApplication.State: CustomStringConvertible {
    public var description: String {
        switch self {
        case .background:
            return "background"
        case .active:
            return "active"
        case .inactive:
            return "inactive"
        @unknown default:
            fatalError("")
        }
    }
    
    
    
    
}
