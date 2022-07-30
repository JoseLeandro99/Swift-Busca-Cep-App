import UIKit

class AppImage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(name: String, contendMode: ContentMode, tintColor: UIColor) {
        super.init(frame: .zero)
        
        defaultValues(name: name, contendMode: contendMode, tintColor: tintColor)
    }
    
    private func defaultValues(name: String, contendMode: ContentMode, tintColor: UIColor) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(systemName: name)
        self.contentMode = contendMode
        self.tintColor = tintColor
    }
}
