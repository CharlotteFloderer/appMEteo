//
//  meteoController.swift
//  appMeteo
//
//  Created by Charlotte Floderer on 08/08/2018.
//  Copyright © 2018 Charlotte Floderer. All rights reserved.
//

import UIKit
import MapKit

class meteoController: UIViewController {

    
    var locationManger: CLLocationManager?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        miseEnPLaceCLocationManger()
    }

   
    func obtenirPrevisionMeteo ( latitude: Double, longitude: Double) {
        let urlDeBase = "http://api.openweathermap.org/data/2.5/forecast?"
        let latitude = "lat="+String(latitude)
        let longitude = "&lon="+String(longitude)
        let uniteEtLangue = "&units=metric&lang=fr"
        let cleApi = "&APPID=" + API
        let urlString = urlDeBase + latitude + longitude + uniteEtLangue + cleApi
        
        print(urlString)
    }

    

}
