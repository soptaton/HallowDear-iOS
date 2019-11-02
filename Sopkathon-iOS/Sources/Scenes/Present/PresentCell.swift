//
//  PresentCell.swift
//  Sopkathon-iOS
//
//  Created by 김현지 on 2019/11/03.
//  Copyright © 2019 SOPT. All rights reserved.
//

import UIKit

class PresentCell: UITableViewCell {
    
    @IBOutlet var presentView: UIView!
    @IBOutlet var presentImg: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var presentDate: UILabel!
    @IBOutlet var presentCost: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        presentView.layer.cornerRadius = 27
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
