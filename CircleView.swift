//
//  CircleView.swift
//  ColorFullCircleAnimation
//
//  Created by Vaibhav Sharma on 19/03/23.
//

import Foundation
import UIKit

class WaveView: UIView {
    
    let animationDuration: TimeInterval = 2.0
    let numberOfWaves = 5
    let waveColors = [UIColor.red, UIColor.green, UIColor.blue, UIColor.yellow, UIColor.purple]
    let waveLineWidth: CGFloat = 5.0

    override func draw(_ rect: CGRect) {
        let radius = min(bounds.width, bounds.height) / 2.0 - waveLineWidth / 2.0
        
        for i in 0..<numberOfWaves {
            let center = CGPoint(x: bounds.midX, y: bounds.midY)
            let startAngle = CGFloat(0)
            let endAngle = CGFloat(Double.pi * 2)
            let path = UIBezierPath(arcCenter: center, radius: radius - CGFloat(i) * waveLineWidth, startAngle: startAngle, endAngle: endAngle, clockwise: true)
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = path.cgPath
            shapeLayer.lineWidth = waveLineWidth
            shapeLayer.fillColor = UIColor.clear.cgColor
            shapeLayer.strokeColor = waveColors[i % waveColors.count].cgColor
            shapeLayer.lineCap = .round
            
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.duration = animationDuration
            animation.fromValue = 0.0
            animation.toValue = 1.0
            animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
            shapeLayer.add(animation, forKey: "strokeEndAnimation")
            
            layer.addSublayer(shapeLayer)
        }
    }

}




    



