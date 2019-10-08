//
//  ContentView.swift
//  RobotARKit
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
        
        let Bot = AnchorEntity(plane: .horizontal)
        
       // let anchor = AnchorEntity(plane: .horizontal)
        
        // Load the "Box" scene from the "Experience" Reality File
        let botAnchor = try! Experience.loadBot()
        
        Bot.scale = SIMD3<Float>(0.01, 0.01, 0.1)
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(botAnchor)
        
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
