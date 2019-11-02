//
//  PresentVC.swift
//  Sopkathon-iOS
//
//  Created by 김현지 on 2019/11/03.
//  Copyright © 2019 SOPT. All rights reserved.
//

import UIKit

class PresentVC: UIViewController {
    
    @IBOutlet var presentTV: UITableView!
    
    var presents: [Present] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dummyData()
//        setPresent()
        
        presentTV.delegate = self
        presentTV.dataSource = self
        
    }
    
}

extension PresentVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PresentCell", for: indexPath) as! PresentCell
        let present = presents[indexPath.row]
        let img = UIImage(named: present.presentImg)
        
        cell.presentImg.image = img
        cell.userName.text = present.userName
        cell.presentDate.text = present.presentDate
        cell.presentCost.text = present.presentCost
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 126
    }
}

extension PresentVC {
    func dummyData() {
        let p1 = Present(presentImg: "candyIc", userName: "김윤아", presentDate: "2019.10.31", presentCost: "3000원")
        let p2 = Present(presentImg: "chocolateIc", userName: "김재민", presentDate: "2019.10.31", presentCost: "4000원")
        let p3 = Present(presentImg: "candyIc", userName: "정민주", presentDate: "2019.10.30", presentCost: "2000원")
        let p4 = Present(presentImg: "chocolateIc", userName: "김강희", presentDate: "2019.10.29", presentCost: "5000원")
        presents = [p1, p2, p3, p4]
    }
}

