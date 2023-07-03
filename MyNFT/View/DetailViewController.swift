import UIKit
import RxSwift
import RxCocoa

class DetailViewController: UIViewController {
    
    private let disposeBag = DisposeBag()
    
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
    }
    
    @objc func backButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
}
