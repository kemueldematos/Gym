import Foundation

class Instrutor: Pessoa {
    var especialidade: String

    init(especialidade: String, nome: String, email: String) {
        self.especialidade = especialidade
        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) / Especialidade: \(self.especialidade)"
    }
}
