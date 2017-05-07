//
//  ViewController.swift
//  mapAnnotation
//
//  Created by MK on 07/05/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(37.760122, -122.468158)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "My Shop"
        annotation.subtitle = "Its my shope come here to meet me"
        
        map.addAnnotation(annotation)
    
    }

}

