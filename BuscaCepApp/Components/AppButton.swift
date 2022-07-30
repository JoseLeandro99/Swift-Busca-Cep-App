import UIKit

class AppButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String, color: UIColor, background: UIColor, state: State) {
        super.init(frame: .zero)
        defaultValues(title: title, color: color, background: background, for: state)
    }
    
    func configure(target: Any?, selector: Selector, event: UIControl.Event) {
        self.addTarget(target, action: selector, for: event)
    }
    
    private func defaultValues(title: String, color: UIColor, background: UIColor, for state: State) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(title, for: state)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        self.setTitleColor(color, for: state)
        self.backgroundColor = background
        self.clipsToBounds = true
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 1.4
        self.layer.borderColor = background.cgColor
    }
}
