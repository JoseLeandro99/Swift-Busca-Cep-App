import UIKit

class BuscaCepViewController: UIViewController {
    var screen: BuscaCepView?
    var service: ApiServiceProtocol?
    
    override func loadView() {
        self.screen = BuscaCepView()
        self.view = self.screen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(service: ApiServiceProtocol) {
        self.service = service
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen?.configTextFieldDelegate(delegate: self)
        self.screen?.configDelegate(delagate: self)
    }
}
