//
//  RoundButton.swift
//  Sopkathon-iOS
//
//  Created by 천유정 on 03/11/2019.
//  Copyright © 2019 SOPT. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class RoundView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
        self.layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
