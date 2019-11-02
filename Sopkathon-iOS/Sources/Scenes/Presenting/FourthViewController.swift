//
//  FourthViewController.swift
//  Sopkathon-iOS
//
//  Created by LeeSeungsoo on 2019/11/03.
//  Copyright © 2019 SOPT. All rights reserved.
//

import UIKit
import Hero

class FourthPresentingViewController: UIViewController {
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var progressImg: UIImageView!
  @IBOutlet weak var dot: UIImageView!
  @IBOutlet weak var nextButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    hero.isEnabled = true
    titleLabel.hero.id = "title"
    progressImg.hero.id = "progressImg"
    dot.hero.id = "dot"
    nextButton.hero.id = "nextButton"
    nextButton.layer.applySmoothRoundedCorner()
  }
  
}
