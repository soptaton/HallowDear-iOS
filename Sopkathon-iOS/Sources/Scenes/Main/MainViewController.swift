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
    circularProgressView.setProgressWithAnimation(duration: 1, value: 0.75)
  }

  
}

extension MainViewController {
  private func setupView() {
    presentingButton.layer.applySmoothRoundedCorner(18)
    presentingButton.backgroundColor = .init(red: 254/255, green: 94/255, blue: 92/255, alpha: 1)
    currentPresentButton.layer.applySmoothRoundedCorner(18)
    currentPresentButton.backgroundColor = .init(white: 208/255, alpha: 1)
    currentRewardButton.layer.applySmoothRoundedCorner(18)
    currentRewardButton.backgroundColor = .init(white: 208/255, alpha: 1)
  }
}

