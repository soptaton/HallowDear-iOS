//
//  ViewController.swift
//  Sopkathon-iOS
//
//  Created by LeeSeungsoo on 2019/11/02.
//  Copyright © 2019 SOPT. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  @IBOutlet weak var circularProgressView: CircularProgressView!
  
  @IBOutlet weak var presentingButton: UIButton!
  @IBOutlet weak var presentingButtonBackView: UIView!
  @IBOutlet weak var currentPresentButton: UIButton!
  @IBOutlet weak var currentPresentButtonBackView: UIView!
  @IBOutlet weak var currentRewardButton: UIButton!
  @IBOutlet weak var currentRewardButtonBackView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    circularProgressView.setProgressWithAnimation(duration: 0.7, value: 0.75)
    
  }

  
}

extension MainViewController {
  private func setupView() {
    presentingButton.layer.applySmoothRoundedCorner(10)
    presentingButtonBackView.layer.cornerRadius = 10
    presentingButtonBackView.layer.applySketchShadow(color: .black, alpha: 0.3, x: 2, y: 2, blur: 8, spread: 0)
    
    currentPresentButton.layer.applySmoothRoundedCorner(10)
    currentPresentButtonBackView.layer.cornerRadius = 10
    currentPresentButtonBackView.layer.applySketchShadow(color: .black, alpha: 0.3, x: 2, y: 2, blur: 8, spread: 0)
    
    currentRewardButton.layer.applySmoothRoundedCorner(10)
    currentRewardButtonBackView.layer.cornerRadius = 10
    currentRewardButtonBackView.layer.applySketchShadow(color: .black, alpha: 0.3, x: 2, y: 2, blur: 8, spread: 0)
  }
}

