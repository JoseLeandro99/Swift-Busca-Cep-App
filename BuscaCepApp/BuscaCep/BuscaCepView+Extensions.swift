import UIKit

extension BuscaCepView {
    func setupAppLogoImage() {
        self.addSubview(self.appLogoImage)
        NSLayoutConstraint.activate([
            self.appLogoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            self.appLogoImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.appLogoImage.widthAnchor.constraint(equalToConstant: 130),
            self.appLogoImage.heightAnchor.constraint(equalTo: self.appLogoImage.widthAnchor),
        ])
    }
    
    func setupAppTitleLabel() {
        self.addSubview(self.appTitleLabel)
        NSLayoutConstraint.activate([
            self.appTitleLabel.topAnchor.constraint(equalTo: self.appLogoImage.bottomAnchor, constant: 20),
            self.appTitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    func setupSeparatorLine() {
        self.addSubview(self.separatorLineView)
        NSLayoutConstraint.activate([
            self.separatorLineView.topAnchor.constraint(equalTo: self.appTitleLabel.bottomAnchor, constant: 25),
            self.separatorLineView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.separatorLineView.widthAnchor.constraint(equalToConstant: 300),
            self.separatorLineView.heightAnchor.constraint(equalToConstant: 1.4)
        ])
    }
    
    func setupSearchInput() {
        self.addSubview(self.searchInput)
        NSLayoutConstraint.activate([
            self.searchInput.topAnchor.constraint(equalTo: self.separatorLineView.bottomAnchor, constant: 25),
            self.searchInput.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            self.searchInput.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30),
            self.searchInput.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func setupResultlabels() {
        self.resultRuaLabel.textCenter()
        self.resultBairroLabel.textCenter()
        self.resultCidadeEstadoLabel.textCenter()
        
        self.addSubview(self.resultRuaLabel)
        self.addSubview(self.resultBairroLabel)
        self.addSubview(self.resultCidadeEstadoLabel)
        
        NSLayoutConstraint.activate([
            self.resultRuaLabel.topAnchor.constraint(equalTo: self.searchInput.bottomAnchor, constant: 80),
            self.resultRuaLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 35),
            self.resultRuaLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -35),
            
            self.resultBairroLabel.topAnchor.constraint(equalTo: self.resultRuaLabel.bottomAnchor, constant: 10),
            self.resultBairroLabel.leadingAnchor.constraint(equalTo: self.resultRuaLabel.leadingAnchor),
            self.resultBairroLabel.trailingAnchor.constraint(equalTo: self.resultRuaLabel.trailingAnchor),
            
            self.resultCidadeEstadoLabel.topAnchor.constraint(equalTo: self.resultBairroLabel.bottomAnchor, constant: 10),
            self.resultCidadeEstadoLabel.leadingAnchor.constraint(equalTo: self.resultRuaLabel.leadingAnchor),
            self.resultCidadeEstadoLabel.trailingAnchor.constraint(equalTo: self.resultRuaLabel.trailingAnchor)
        ])
    }
    
    func setupClearButton() {
        self.clearValuesButton.configure(target: nil, selector: #selector(tappedClearButton), event: .touchUpInside)
        self.addSubview(self.clearValuesButton)
        NSLayoutConstraint.activate([
            self.clearValuesButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            self.clearValuesButton.leadingAnchor.constraint(equalTo: self.searchInput.leadingAnchor),
            self.clearValuesButton.trailingAnchor.constraint(equalTo: self.searchInput.trailingAnchor),
            self.clearValuesButton.heightAnchor.constraint(equalTo: self.searchInput.heightAnchor)
        ])
    }
}
