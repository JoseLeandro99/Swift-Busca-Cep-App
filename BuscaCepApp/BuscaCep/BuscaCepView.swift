import UIKit

protocol BuscaCepViewProtocol: AnyObject {
    func clearButtonAction()
}

class BuscaCepView: UIView {
    private var delegate: BuscaCepViewProtocol?
    
    lazy var appLogoImage = AppImage(
        name: "location.viewfinder",
        contendMode: .scaleAspectFit,
        tintColor: .systemGreen)
    
    lazy var appTitleLabel = AppLabel(
        text: "Busca Cep",
        color: .systemGreen,
        font: .systemFont(ofSize: 32, weight: .medium))
    
    lazy var separatorLineView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGreen
        return view
    }()
    
    lazy var searchInput = AppTextField(
        placeholder: "Digite o CEP:",
        color: .darkGray,
        padding: .both(20))
    
    lazy var resultRuaLabel = AppLabel(
        text: "",
        color: .darkGray,
        font: .systemFont(ofSize: 20, weight: .regular))
    
    lazy var resultBairroLabel = AppLabel(
        text: "",
        color: .darkGray,
        font: .systemFont(ofSize: 20, weight: .regular))
    
    lazy var resultCidadeEstadoLabel = AppLabel(
        text: "",
        color: .darkGray,
        font: .systemFont(ofSize: 20, weight: .regular))
    
    lazy var clearValuesButton = AppButton(
        title: "Clear Values",
        color: .white,
        background: .systemGreen,
        state: .normal)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setBackground()
        self.setupUI()
    }
    
    func configDelegate(delagate: BuscaCepViewProtocol) {
        self.delegate = delagate
    }
    
    func retrieveResult(result: CepResult) {
        self.resultRuaLabel.text = "Rua: \(result.rua)"
        self.resultBairroLabel.text = "Bairro: \(result.bairro)"
        self.resultCidadeEstadoLabel.text = "Cidade: \(result.cidade) - \(result.estado)"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTextFieldDelegate(delegate: UITextFieldDelegate?) {
        self.searchInput.delegate = delegate
    }
    
    private func setBackground() {
        self.backgroundColor = .white
    }
    
    private func setupUI() {
        self.setupAppLogoImage()
        self.setupAppTitleLabel()
        self.setupSeparatorLine()
        self.setupSearchInput()
        self.setupResultlabels()
        self.setupClearButton()
    }
    
    func clearResultLabels() {
        self.searchInput.text = ""
        self.resultRuaLabel.text = ""
        self.resultBairroLabel.text = ""
        self.resultCidadeEstadoLabel.text = ""
    }
    
    @objc
    func tappedClearButton() {
        self.delegate?.clearButtonAction()
    }
}
