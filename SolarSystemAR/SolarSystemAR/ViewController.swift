//
//  ViewController.swift
//  SolarSystemAR
//
//  Created by Güney Berkay  on 4.09.2022.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        //let mySphere = createSphere(radius: 0.1, content: "wall.png", vector: SCNVector3(0,0.2,-1))
        //sceneView.scene.rootNode.addChildNode(mySphere)
        //let myBox = createBox(width: 0.1, height: 0.1, length: 0.2, chamferRadius: 0.02, content: "wood.png", vector: SCNVector3(0.2, 0, -5))
        //sceneView.scene.rootNode.addChildNode(myBox)
        let world = createSphere(radius: 0.1, content: "world.png", vector: SCNVector3(0,0.2,-1))
        let mars = createSphere(radius: 0.2, content: "mars.png", vector: SCNVector3(0.5,0.2,-1))
        let venus = createSphere(radius: 0.06, content: "venus.png", vector: SCNVector3(1,0.2,-1))
        
        sceneView.scene.rootNode.addChildNode(world)
        sceneView.scene.rootNode.addChildNode(mars)
        sceneView.scene.rootNode.addChildNode(venus)
        sceneView.automaticallyUpdatesLighting = true
    
    }
    func createBox(width:CGFloat,height:CGFloat,length:CGFloat,chamferRadius:CGFloat, content:String,vector:SCNVector3) ->SCNNode  {
        let myBox = SCNBox(width: width, height: height, length: length, chamferRadius: chamferRadius)
        let boxMaterial = SCNMaterial()
        boxMaterial.diffuse.contents = UIImage(named: "art.scnassets/\(content)")
    
        myBox.materials = [boxMaterial]
    
        let node = SCNNode()
        node.position = vector
    
        node.geometry = myBox
        return node
    }
    func createSphere(radius: CGFloat, content: String,vector:SCNVector3) -> SCNNode    {
        let mySphere = SCNSphere(radius: radius)
        let sphereMaterial = SCNMaterial()
        sphereMaterial.diffuse.contents = UIImage(named: "art.scnassets/\(content)")
        mySphere.materials = [sphereMaterial]
        let node2 = SCNNode()
        node2.position = vector
        node2.geometry = mySphere
     
        return node2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
