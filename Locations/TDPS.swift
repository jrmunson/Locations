//
//  TDPS.swift
//  Locations
//
//  Created by Jim on 9/30/15.
//  Copyright (c) 2015 Jim. All rights reserved.
//

import Foundation
import MapKit
import AddressBook

class Tdps: NSObject, MKAnnotation {
    let title: String
    let name: String
    let address: String
    let city: String
    let st: String
    let zip: String
    let type: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, name: String, address: String, city: String, st: String, zip: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.name = name
        self.address = address
        self.city = city
        self.st = st
        self.zip = zip
        self.type = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    class func fromJSON(json: [JSONValue]) -> Tdps? {

        var name: String
        if let nameOrNil = json[0].string {
            name = nameOrNil
        } else {
            name = ""
        }
        let title = name
        let address = json[1].string
        let city = json[3].string
        let st = json[4].string
        let zip = json[5].string
        let type = json[6].string
        
        let latitude = (json[7].string! as NSString).doubleValue
        let longitude = (json[8].string! as NSString).doubleValue
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    
        return Tdps(title: title, name: address!, address: address!, city: city!, st: st!, zip: zip!, type: type!, coordinate: coordinate)
    }
    
    var subtitle: String {
        return name
    }
    

    func pinColor() -> MKPinAnnotationColor  {
        switch type {
        case "HOSP", "hosp":
            return .Red
        case "TDPS", "tdps":
            return .Green
        default:
            return .Purple
        }
    }
    
    // annotation callout opens this mapItem in Maps app
    func mapItem() -> MKMapItem {
        let addressDict = [String(kABPersonAddressStreetKey): self.subtitle]
        let placemark = MKPlacemark(coordinate: self.coordinate, addressDictionary: addressDict)
        
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = self.name
        
        return mapItem
    }
    
}

