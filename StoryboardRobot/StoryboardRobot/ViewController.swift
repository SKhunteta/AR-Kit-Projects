//
//  ViewController.swift
//  StoryboardRobot
//
//  Created by Shreyans Khunteta on 10/8/19.
//  Copyright © 2019 Shreyans Khunteta. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        
    }
}
