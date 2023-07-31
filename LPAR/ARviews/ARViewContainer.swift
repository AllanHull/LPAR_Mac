//
//  ARViewContainer.swift
//  LPAR
//
//  Created by Allan Hull on 3/2/20.
//  Copyright © 2020 Allan Hull. All rights reserved.
//

import SwiftUI
import RealityKit

struct ARViewContainer1: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
