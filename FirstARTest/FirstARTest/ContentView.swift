//
//  ContentView.swift
//  FirstARTest
//
//  Created by Shreyans Khunteta on 10/7/19.
//  Copyright © 2019 Shreyans Khunteta. All rights reserved.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
    
    
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        //let config = ARWorldTrackingConfiguration()
        
        //let spotLight = arView.environment.lighting
    
        
        var anchor:Experience.Box!
        
        
        anchor = try! Experience.loadBox()
        anchor.generateCollisionShapes(recursive: true)
        
       // arView.session.run(config, options: [])
        arView.scene.anchors.append(anchor)
        //arView.scene.anchors.append(spotLight)
        
        
        
        
        anchor.scale = SIMD3<Float>(0.001, 0.001, 0.01)
        
        
        // Load the "Box" scene from the "Experience" Reality File
//        let boxAnchor = try! Experience.loadBox()
//
//        boxAnchor.scale = SIMD3<Float>(0.001, 0.001, 0.01)
//
//        // Add the box anchor to the scene
//        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
