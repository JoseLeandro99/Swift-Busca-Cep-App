import UIKit

extension BuscaCepViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let value = textField.text else {return true}
        if value.count > 0 {
            self.service?.getAddressFromCep(cep: value, completion: { result in
                DispatchQueue.main.async {
                    self.screen?.retrieveResult(result: result)
                }
            }, failure: { error in
                print(error)
            })
        }
        
        return true
    }
}

extension BuscaCepViewController: BuscaCepViewProtocol {
    func clearButtonAction() {
        self.screen?.clearResultLabels()
    }
}
