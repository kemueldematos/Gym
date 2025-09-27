import Foundation

class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String : Aluno] = [:]
    var capacidadeMaxima: Int

    override init(nome: String, instrutor: Instrutor) {
        self.capacidadeMaxima = 3
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno : Aluno) -> Bool {
        print("Adicionando aluno na aula...")
        if (alunosInscritos.count >= capacidadeMaxima) {
            print("Erro: Capacidade máxima de alunos atingida.")
            return false
        }

        for matricula in alunosInscritos.keys {
            if (aluno.getMatricula() == matricula) {
                print("Erro: Aluno já registrado na aula.")
                return false
            }
        }

        alunosInscritos[aluno.getMatricula()] = aluno
        print("Sucesso! Aluno adicionado")
        return true
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) / Capacidade máxima: \(self.capacidadeMaxima) / Vagas ocupadas: \(self.alunosInscritos.count)"
    }
}
