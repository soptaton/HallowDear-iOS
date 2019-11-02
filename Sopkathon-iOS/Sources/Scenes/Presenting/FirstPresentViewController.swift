//
//  FirstPresentViewController.swift
//  Sopkathon-iOS
//
//  Created by LeeSeungsoo on 2019/11/03.
//  Copyright © 2019 SOPT. All rights reserved.
//

import UIKit
import Hero

class FirstPresentingViewController: UIViewController {
  
  var candySelected: Bool = false {
    didSet {
      let image = candySelected ? UIImage(imageLiteralResourceName: "candySelectedBtn") : UIImage(imageLiteralResourceName: "candyUnselectedBtn")
      candyImage.image = image
    }
  }
  
  var chocolateSelected: Bool = false {
    didSet {
      let image = chocolateSelected ? UIImage(imageLiteralResourceName: "chocolateSelectedBtn") : UIImage(imageLiteralResourceName: "chocolateUnselectedBtn")
      chocolateImage.image = image
    }
  }
  
  
  
  @IBOutlet weak var candyImage: UIImageView!
  @IBOutlet weak var chocolateImage: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var progressImg: UIImageView!
  @IBOutlet weak var dot: UIImageView!
  @IBOutlet weak var nextButton: UIButton!
  
  @IBOutlet weak var candyButton: UIButton!
  @IBOutlet weak var chocolateButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    hero.isEnabled = true
    titleLabel.hero.id = "title"
    progressImg.hero.id = "progressImg"
    dot.hero.id = "dot"
    nextButton.hero.id = "nextButton"
    nextButton.addTarget(self, action: #selector(presentNext), for: .touchUpInside)
    nextButton.layer.applySmoothRoundedCorner()
    
    candyButton.addTarget(self, action: #selector(candySelect), for: .touchUpInside)
    chocolateButton.addTarget(self, action: #selector(chocolateSelect), for: .touchUpInside)
  }
  
  
  @objc func presentNext() {
    guard let next = storyboard?.instantiateViewController(withIdentifier: "Second") as? SecondPresentingViewController else { return }
    next.hero.modalAnimationType = .slide(direction: .left)
    next.modalPresentationStyle = .fullScreen
    present(next, animated: true)
  }
  
  @objc func candySelect() {
    if !candySelected && chocolateSelected {
      chocolateSelected.toggle()
    }
    candySelected.toggle()
  }
  
  @objc func chocolateSelect() {
    if candySelected && !chocolateSelected {
      candySelected.toggle()
    }
    chocolateSelected.toggle()
  }
}
