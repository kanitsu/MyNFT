import UIKit
import RxSwift
import RxCocoa

class ListViewController: UIViewController {
    
    @IBOutlet weak var testButton: UIButton!
    
    private let disposeBag = DisposeBag()
    var viewModel: ListViewModel?
    
    override func viewDidLoad() {
        testButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.viewModel?.selectedItem.onNext(1)
            })
            .disposed(by: disposeBag)
        
        super.viewDidLoad()
    }
}
