//
//  ThirdPresentingViewController.swift
//  Sopkathon-iOS
//
//  Created by LeeSeungsoo on 2019/11/03.
//  Copyright © 2019 SOPT. All rights reserved.
//

import UIKit
import Hero

class ThirdPresentingViewController: UIViewController {
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var progressImg: UIImageView!
  @IBOutlet weak var nextButton: UIButton!
  @IBOutlet weak var dot: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    hero.isEnabled = true
    titleLabel.hero.id = "title"
    progressImg.hero.id = "progressImg"
    dot.hero.id = "dot"
    nextButton.hero.id = "nextButton"
    nextButton.addTarget(self, action: #selector(presentNext), for: .touchUpInside)
    nextButton.layer.applySmoothRoundedCorner()
  }
  
  
  @objc func presentNext() {
    guard let next = storyboard?.instantiateViewController(withIdentifier: "Fourth") as? FourthPresentingViewController else { return }
    next.modalPresentationStyle = .fullScreen
    next.hero.modalAnimationType = .slide(direction: .left)
    present(next, animated: true)
  }
}
