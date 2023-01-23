//  Ocean.swift
//  Created by Samir Patel(301286671) on 2023-01-14.
//  Description: MAPD-724-LAB1
//  Version: v1.0.0
import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func Start()
    {
        zPosition = 0
        verticalSpeed = 5.0
    }
    override func Update()
    {
        Move()
        CheckBounds()
    }
    override func CheckBounds()
    {
        if(position.y <= -2107)
        {
            Reset()
        }
    }
    override func Reset()
    {
        position.y = 2107
    }
    func Move()
    {
        position.y -= verticalSpeed!
    }
}
