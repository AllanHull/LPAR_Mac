//
//  MapView.swift
//  LPAR
//
//  Created by Allan Hull on 4/14/20.
//  Copyright © 2020 Allan Hull. All rights reserved.
//


import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var s1: String
    var s2: String
    var s3: String
    var s4: String
    

    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        print(">> MapView ")
        print(">> s1 = ",s1)
        print(">> s2 = ",s2)
        print(">> s3 = ",s3)
        print(">> s4 = ",s4)
        
        // convert passed String (s1, s2) parameters to Double values
        let s1Latitude = Double((s1 as NSString).doubleValue)
        let s2Longitude = Double((s2 as NSString).doubleValue)

        print("")
        print("s1Latitude:  ", terminator: "")
        print(s1Latitude, terminator: "")
        print("s2Longitude: ", terminator: "")
        print(s2Longitude, terminator: "")
                
        let location = CLLocationCoordinate2D(latitude: s1Latitude,
            longitude: s2Longitude)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        uiView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = s3
        annotation.subtitle = s4
     //   annotation.title = "Big Ben"
     //   annotation.subtitle = "London"
        uiView.addAnnotation(annotation)
    }
}


