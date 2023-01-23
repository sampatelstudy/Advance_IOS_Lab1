//  Player.swift
//  Created by Samir Patel(301286671) on 2023-01-14.
//  Description: MAPD-724-LAB1
//  Version: v1.0.0
import GameplayKit
import SpriteKit

class Player : GameObject
{
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func Start()
    {
        zPosition = 2
        Reset()
    }
    override func Update()
    {
        CheckBounds()
    }
    override func CheckBounds()
    {
        if(position.x <= -255)
        {
            position.x = -255
        }
        if(position.x >= 255)
        {
            position.x = 255
        }
    }
    override func Reset()
    {
        position.y = -495
    }
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
