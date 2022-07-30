import UIKit

class AppLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(text: String, color: UIColor, font: UIFont) {
        super.init(frame: .zero)
        
        self.defaultValues(text: text, color: color, font: font)
    }
    
    func textCenter() {
        self.textAlignment = .center
    }
    
    private func defaultValues(text: String, color: UIColor, font: UIFont) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.textColor = color
        self.font = font
    }
}
