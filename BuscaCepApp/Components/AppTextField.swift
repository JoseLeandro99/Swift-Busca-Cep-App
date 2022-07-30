import UIKit

class AppTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(placeholder: String, color: UIColor, padding: textFieldPadding) {
        super.init(frame: .zero)
        
        self.defaultValues(placeholder: placeholder, color: color, padding: padding)
    }
    
    private func defaultValues(placeholder: String, color: UIColor, padding: textFieldPadding) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        self.textColor = color
        self.backgroundColor = .white
        self.clipsToBounds = true
        self.layer.cornerRadius = 4
        self.layer.borderWidth = 1.4
        self.layer.borderColor = UIColor.systemGreen.cgColor
        self.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        self.padding(padding)
    }
}
