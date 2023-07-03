import RxSwift

class DetailCoordinator: BaseCoordinator {
    
    private let disposeBag = DisposeBag()
    
    override func start() {
        let viewController = UIStoryboard.init(name: "Detail", bundle: nil).instantiateInitialViewController()
        guard let detailViewController = viewController as? DetailViewController else { return }
        detailViewController.modalPresentationStyle = .fullScreen
        navigationController.presentOnTop(detailViewController, animated: true)
    }
}
