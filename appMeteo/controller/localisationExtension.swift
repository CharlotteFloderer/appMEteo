//
//  localisationExtension.swift
//  appMeteo
//
//  Created by Charlotte Floderer on 08/08/2018.
//  Copyright © 2018 Charlotte Floderer. All rights reserved.
//

import UIKit
import MapKit


extension meteoController: CLLocationManagerDelegate {
    
    func miseEnPLaceCLocationManger() {
        locationManger = CLLocationManager()
        locationManger?.delegate = self
        locationManger?.requestAlwaysAuthorization()
        locationManger?.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard locations.count > 0 else {return}
        locationManger?.stopUpdatingLocation()
        let positionActuelle = locations[0]
        let latitude = positionActuelle.coordinate.latitude
        let longitude = positionActuelle.coordinate.longitude
        print("Latitude: \(latitude) -> longitude: \(longitude)")
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
    
}
