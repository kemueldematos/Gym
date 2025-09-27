import Foundation

class Aluno: Pessoa {
    var matricula: String
    var nivel: NivelAluno = .iniciante
    private(set) var plano: Plano

    init(matricula: String, nome: String, email: String, plano: Plano) {
        self.matricula = matricula
        self.plano = plano
        super.init(nome: nome, email: email)
    }

    func getMatricula() -> String {
        return matricula
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) / Matricula: \(self.matricula) / Plano: \(self.plano.nome)"
    }
}

enum NivelAluno {
    case iniciante
    case intermediario
    case avancado
}
