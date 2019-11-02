//
//  CircularProgressView.swift
//  Sopkathon-iOS
//
//  Created by LeeSeungsoo on 2019/11/03.
//  Copyright © 2019 SOPT. All rights reserved.
//

import UIKit

class CircularProgressView: UIView {
  
  var progressLyr = CAShapeLayer()
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    makeCircularPath()
  }
  
  var progressClr: UIColor = .black {
    didSet {
      progressLyr.strokeColor = progressClr.cgColor
    }
  }
  
  func makeCircularPath() {
    self.backgroundColor = UIColor.clear
    self.layer.cornerRadius = self.frame.size.width / 2
    let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width/2, y: frame.size.height/2), radius: (frame.size.width - 1.5)/2, startAngle: .pi / 2, endAngle: 2.5 * .pi, clockwise: true)
    progressLyr.path = circlePath.cgPath
    progressLyr.fillColor = UIColor.clear.cgColor
    progressLyr.strokeColor = progressClr.cgColor
    progressLyr.lineWidth = 10.0
    progressLyr.strokeEnd = 0.0
    progressLyr.lineCap = .round
    layer.addSublayer(progressLyr)
  }
  
  func setProgressWithAnimation(duration: TimeInterval, value: Float) {
    let animation = CABasicAnimation(keyPath: "strokeEnd")
    animation.duration = duration
    animation.fromValue = 0
    animation.toValue = value
    animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
    progressLyr.strokeEnd = CGFloat(value)
    progressLyr.add(animation, forKey: "animateprogress")
  }
}
