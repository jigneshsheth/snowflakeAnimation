//
//  ViewController.swift
//  SnowFlakeAnimation
//
//  Created by Jigs Sheth on 12/8/15.
//  Copyright © 2015 shethjignesh.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let rect = CGRect(x: 0.0, y: -70.0, width: self.view.bounds.width, height: 50)
    
    let emitter = CAEmitterLayer()
    emitter.frame = rect
    self.view.layer.addSublayer(emitter)
    emitter.emitterShape = kCAEmitterLayerRectangle
    emitter.emitterPosition = CGPoint(x: rect.width/2, y: rect.height/2)
    emitter.emitterSize = rect.size
    
    let emitterCell = CAEmitterCell()
    emitterCell.contents = UIImage(named: "snowflake_white16.png")!.CGImage
    emitterCell.birthRate = 8
    emitterCell.lifetime = 15
    emitterCell.yAcceleration = 20.0
    emitterCell.xAcceleration = 1.0
//    emitterCell.velocity = 20.0
//    emitterCell.velocityRange = 250.0
//    
//    emitterCell.emissionLongitude = CGFloat(-M_PI)
//    emitterCell.emissionRange = CGFloat(M_PI_2)

//    emitterCell.color = UIColor(red: 0.9, green: 1.0, blue: 1.0, alpha: 1.0).CGColor
//    emitterCell.redRange   = 0.1
//    emitterCell.greenRange = 0.1
//    emitterCell.blueRange  = 0.1
//    

    emitterCell.scale = 1.8
    emitterCell.scaleRange = 1.0
    emitterCell.scaleSpeed = -0.15
    emitterCell.alphaRange = 1.00
    emitterCell.alphaSpeed = -0.15
    emitterCell.lifetimeRange = 2.0
    
    emitter.emitterCells = [emitterCell]
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

