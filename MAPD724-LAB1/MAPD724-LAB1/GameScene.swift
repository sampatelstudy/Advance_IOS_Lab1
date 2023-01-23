//  GameScene.swift
//  Created by Samir Patel(301286671) on 2023-01-14.
//  Description: MAPD-724-LAB1
//  Version: v1.0.0
import UIKit
import AVFoundation
import SpriteKit
import GameplayKit

let screeSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene
{
    var ocean1 : Ocean?
    var ocean2 : Ocean?
    var player : Player?
    
    override func sceneDidLoad()
    {
        screenWidth = frame.width
        screenHeight = frame.height
        
        name = "GAME"
    
        ocean1 = Ocean()
        ocean1?.Start()
        ocean1?.Reset()
        addChild(ocean1!)
        
        ocean2 = Ocean()
        ocean2?.Start()
        ocean2?.position.y = -773
        addChild(ocean2!)
        
        player = Player()
        player?.Start()
        addChild(player!)
    }
    
    
    func touchDown(atPoint pos : CGPoint)
    {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    func touchMoved(toPoint pos : CGPoint)
    {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
        
    }
    
    func touchUp(atPoint pos : CGPoint)
    {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func update(_ currentTime: TimeInterval)
    {
        ocean1?.Update()
        ocean2?.Update()
        player?.Update()
    }
}
