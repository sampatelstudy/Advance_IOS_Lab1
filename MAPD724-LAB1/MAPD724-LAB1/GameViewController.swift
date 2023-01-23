//  GameViewController.swift
//  Created by Samir Patel(301286671) on 2023-01-14.
//  Description: MAPD-724-LAB1
//  Version: v1.0.0
import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

        if let scene = GKScene(fileNamed: "GameScene")
        {
            
            if let sceneNode = scene.rootNode as! GameScene?
            {
                sceneNode.scaleMode = .aspectFill
                
                if let view = self.view as! SKView?
                {
                    view.presentScene(sceneNode)
                    view.ignoresSiblingOrder = true
                }
            }
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {
        return .portrait
    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
