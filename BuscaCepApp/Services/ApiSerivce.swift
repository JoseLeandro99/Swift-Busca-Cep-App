import Foundation

class ApiService: ApiServiceProtocol {
    private let basePath: String = "https://viacep.com.br"
    
    func getAddressFromCep(cep: String, completion: @escaping completionHandler, failure: @escaping errorHandler) {
        guard let requestUrl = URL(string: getRequestUrl(value: cep)) else {
            failure(.invalidUrl)
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: requestUrl) {(data, response, error) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    failure(.responseError)
                    return
                }
                
                if response.statusCode == 200 {
                    guard let data = data else {
                        failure(.noDataResponse)
                        return
                    }
                    do {
                        let result = try JSONDecoder().decode(CepResult.self, from: data)
                        completion(result)
                    } catch {
                        failure(.conversionFailed)
                    }
                } else {
                    failure(.invalidStatusCode(response.statusCode))
                }
            } else {
                failure(.requestError(error! as NSError))
            }
        }
        
        dataTask.resume()
    }
    
    private func getRequestUrl(value: String) -> String {
        return "\(self.basePath)/ws/\(value)/json/"
    }
}
