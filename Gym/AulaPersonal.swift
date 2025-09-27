import Foundation

class AulaPersonal: Aula {
    var aluno: Aluno

    init(aluno: Aluno, nome: String, instrutor: Instrutor) {
        self.aluno = aluno
        super.init(nome: nome, instrutor: instrutor)
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) / Aluno: \(self.aluno.nome)"
    }
}
