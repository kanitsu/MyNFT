import RxSwift

class ListCoordinator: BaseCoordinator {
    
    private let disposeBag = DisposeBag()
    private let listViewModel = ListViewModel()
    
    override func start() {
        listViewModel.selectedItem
            .distinctUntilChanged()
            .subscribe(onNext: { [weak self] item in self?.openDetail(item) })
            .disposed(by: disposeBag)
        
        let viewController = UIStoryboard.init(name: "List", bundle: nil).instantiateInitialViewController()
        guard let listViewController = viewController as? ListViewController else { return }
        
        listViewController.viewModel = listViewModel
        self.navigationController.viewControllers = [listViewController]
    }
    
    func openDetail(_ item: Int) {
        print("The item: \(item)")
    }
}
