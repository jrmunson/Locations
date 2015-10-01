//
//  VCMapView.swift
//  Locations
//
//  Created by Jim on 9/28/15.
//  Copyright (c) 2015 Jim. All rights reserved.
//

import MapKit

extension ViewController: MKMapViewDelegate {
    
    func mapView(mapView: MKMapView!,
        viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
            if let annotation = annotation as? Tdps{
                let identifier = "pin"
                var view: MKPinAnnotationView
                if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
                    as? MKPinAnnotationView {
                        dequeuedView.annotation = annotation
                        view = dequeuedView
                } else {
                    view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                    view.canShowCallout = true
                    view.calloutOffset = CGPoint(x: -5, y: 5)
                    view.rightCalloutAccessoryView = UIButton.buttonWithType(.DetailDisclosure) as! UIView
                }
                
               view.pinColor = annotation.pinColor()
                
                return view
            }
            return nil
    }
    
    func mapView(mapView: MKMapView!, annotationView view: MKAnnotationView!, calloutAccessoryControlTapped control: UIControl!) {
        let location = view.annotation as! Tdps
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        location.mapItem().openInMapsWithLaunchOptions(launchOptions)
    }
    
}