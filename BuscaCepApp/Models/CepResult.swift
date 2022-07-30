import Foundation

struct CepResult: Decodable {
    var rua: String
    var bairro: String
    var cidade: String
    var estado: String
    
    enum CodingKeys: String, CodingKey {
        case rua = "logradouro"
        case cidade = "localidade"
        case estado = "uf"
        case bairro
    }
}
