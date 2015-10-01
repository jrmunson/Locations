//
//  ViewController.swift
//  Locations
//
//  Created by Jim on 9/28/15.
//  Copyright (c) 2015 Jim. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let regionRadius: CLLocationDistance = 9500 // todo make this a user parameter
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set initial location in Austin
        let initialLocation = CLLocation(latitude: 30.327262, longitude: -97.722788)
        centerMapOnLocation(initialLocation)
        
        loadInitialData()
        mapView.addAnnotations(tdps)
               
        
        mapView.delegate = self
    
    }
    
    var tdps = [Tdps]()
    func loadInitialData() {
        let fileName = NSBundle.mainBundle().pathForResource("Content", ofType: "json");
        var readError : NSError?
        var data: NSData = NSData(contentsOfFile: fileName!, options: NSDataReadingOptions(0), error: &readError)!
        
        var error: NSError?
        let jsonObject: AnyObject! = NSJSONSerialization.JSONObjectWithData(data,
            options: NSJSONReadingOptions(0), error: &error)
        
        if let jsonObject = jsonObject as? [String: AnyObject] where error == nil,
    
            let jsonData = JSONValue.fromObject(jsonObject)?["data"]?.array {
                for tdpsJSON in jsonData {
                    if let tdpsJSON = tdpsJSON.array,
                        // 5
                        tdp = Tdps.fromJSON(tdpsJSON) {
                            tdps.append(tdp)

                    }
                }
        }
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
        
}


