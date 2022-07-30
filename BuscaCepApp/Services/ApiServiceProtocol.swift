import Foundation

enum ApiRequestError {
    case invalidUrl
    case requestError(NSError)
    case responseError
    case invalidStatusCode(Int)
    case noDataResponse
    case conversionFailed
}

protocol ApiServiceProtocol {
    typealias completionHandler = (CepResult) -> Void
    typealias errorHandler = (ApiRequestError) -> Void
    
    func getAddressFromCep(
        cep: String,
        completion: @escaping completionHandler,
        failure: @escaping errorHandler)
}
