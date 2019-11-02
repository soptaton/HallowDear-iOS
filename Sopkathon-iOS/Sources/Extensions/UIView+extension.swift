//
//  UIView+extension.swift
//  Sopkathon-iOS
//
//  Created by LeeSeungsoo on 2019/11/03.
//  Copyright © 2019 SOPT. All rights reserved.
//

import UIKit

extension UIView {
  
}

extension CALayer {
  func applySketchShadow(
    color: UIColor = .black,
    alpha: Float = 0.5,
    x: CGFloat = 0,
    y: CGFloat = 2,
    blur: CGFloat = 4,
    spread: CGFloat = 0)
  {
    shadowColor = color.cgColor
    shadowOpacity = alpha
    shadowOffset = CGSize(width: x, height: y)
    shadowRadius = blur / 2.0
    if spread == 0 {
      shadowPath = nil
    } else {
      let dx = -spread
      let rect = bounds.insetBy(dx: dx, dy: dx)
      shadowPath = UIBezierPath(rect: rect).cgPath
    }
  }
  
  func applySmoothRoundedCorner() {
    let roundedPath = UIBezierPath(roundedRect: bounds, cornerRadius: bounds.height / 2)
    let roundedLayer = CAShapeLayer()
    roundedLayer.path = roundedPath.cgPath
    self.mask = roundedLayer
  }
  
  func applySmoothRoundedCorner(_ radius: CGFloat) {
    let roundedPath = UIBezierPath(roundedRect: bounds, cornerRadius: radius)
    let roundedLayer = CAShapeLayer()
    roundedLayer.path = roundedPath.cgPath
    self.mask = roundedLayer
  }
}
