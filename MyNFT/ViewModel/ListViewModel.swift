import RxSwift

class ListViewModel {
    private let disposeBag = DisposeBag()
    
    let selectedItem = BehaviorSubject(value: -1)
}
