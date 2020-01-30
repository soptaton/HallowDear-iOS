import UIKit

class MainViewController: UIViewController {
  
  @IBOutlet weak var circularProgressView: CircularProgressView!
  
  @IBOutlet weak var presentingButton: UIButton!
  @IBOutlet weak var presentingButtonBackView: UIView!
  @IBOutlet weak var currentPresentButton: UIButton!
  @IBOutlet weak var currentPresentButtonBackView: UIView!
  @IBOutlet weak var currentRewardButton: UIButton!
  @IBOutlet weak var currentRewardButtonBackView: UIView!
    @IBOutlet var getRewardButton: UIButton!
    
    
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    circularProgressView.setProgressWithAnimation(duration: 1, value: 0.75)
  }
    
<<<<<<< HEAD
=======
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupView()
    }
    
>>>>>>> develop
    @IBAction func unwindToMain(_ segue: UIStoryboardSegue) {}
  
}

extension MainViewController {
  private func setupView() {
    presentingButton.layer.applySmoothRoundedCorner(18)
    presentingButton.backgroundColor = .init(red: 254/255, green: 94/255, blue: 92/255, alpha: 1)
    currentPresentButton.layer.applySmoothRoundedCorner(18)
    currentPresentButton.backgroundColor = .init(white: 208/255, alpha: 1)
    currentRewardButton.layer.applySmoothRoundedCorner(18)
    currentRewardButton.backgroundColor = .init(white: 208/255, alpha: 1)
    presentingButton.addTarget(self, action: #selector(goToPresenting), for: .touchUpInside)
    currentPresentButton.addTarget(self, action: #selector(goToPresent), for: .touchUpInside)
    currentRewardButton.addTarget(self, action: #selector(goToDonation), for: .touchUpInside)
    getRewardButton.addTarget(self, action: #selector(goToReward), for: .touchUpInside)
  }
    
    @objc func goToPresenting() {
        guard let nextVC = UIStoryboard(name: "Presenting", bundle: nil).instantiateViewController(withIdentifier: "FirstPresentingViewController") as? FirstPresentingViewController else { return }
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true)
    }
    
    @objc func goToPresent() {
        guard let nextVC = UIStoryboard(name: "Present", bundle: nil).instantiateViewController(withIdentifier: "PresentVC") as? PresentVC else { return }
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true)
    }
    
    @objc func goToDonation() {
        guard let nextVC = UIStoryboard(name: "Donation", bundle: nil).instantiateViewController(withIdentifier: "DonationVC") as? DonationVC else { return }
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true)
    }
    
    @objc func goToReward() {
           guard let nextVC = UIStoryboard(name: "Reward", bundle: nil).instantiateViewController(withIdentifier: "RewardViewController") as? RewardViewController else { return }
           nextVC.modalPresentationStyle = .fullScreen
           present(nextVC, animated: true)
       }
}
