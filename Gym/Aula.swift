import Foundation

class Aula {
    var nome: String
    var instrutor: Instrutor

    init(nome: String, instrutor: Instrutor) {
        self.nome = nome
        self.instrutor = instrutor
    }

    func getDescricao() -> String {
        return "Aula: \(self.nome) / Instrutor: \(self.instrutor.nome)"
    }
}
