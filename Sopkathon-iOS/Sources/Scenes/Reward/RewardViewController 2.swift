import UIKit

class RewardViewController: UIViewController {

    
    @IBOutlet weak var BadgeView: UIView!
    @IBOutlet weak var TattooView: UIView!
    @IBOutlet weak var decisionbutton: UIButton!
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var badgeImg: UIImageView!
    @IBOutlet weak var tattooImg: UIImageView!
    
    var badgeSelected: Bool = false {
        didSet {
            badgeImg.image = badgeSelected ? UIImage(imageLiteralResourceName: "badgeSelectedBtn") : UIImage(imageLiteralResourceName: "badgeUnselectedBtn")
        }
    }
    var tattooSelected: Bool = false {
        didSet {
            tattooImg.image = tattooSelected ? UIImage(imageLiteralResourceName: "tattooSelectedBtn") : UIImage(imageLiteralResourceName: "tattooUnselectedBtn")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        decisionbutton.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        decisionbutton.layer.cornerRadius = decisionbutton.frame.height / 2
        decisionbutton.layer.borderWidth = 1
        decisionbutton.layer.borderColor = UIColor.white.cgColor
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Badgebutton(_ sender: Any) {
        if !badgeSelected && tattooSelected {
            tattooSelected.toggle()
        }
        badgeSelected.toggle()
    }
    
    @IBAction func Tattoobutton(_ sender: Any) {
        if badgeSelected && !tattooSelected {
            badgeSelected.toggle()
        }
        tattooSelected.toggle()
    }
    
    @objc func handleButton() {
        
    }
    @IBAction func backbuttonaction(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func decisionbuttonaction(_ sender: Any) {
    }
    

}
