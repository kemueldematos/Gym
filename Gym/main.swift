import Foundation

// Criando primeiro aluno, instrutor e aula
print()
print("===Criando primeiro aluno, instrutor e aula===")
let plano1 = PlanoMensal()
let aluno1 = Aluno(
    matricula: "GJK3041", 
    nome: "Gustavo Braz Frainer", 
    email: "guga.frainer1@gmail.com", 
    plano: plano1)
print()
print("Aluno:", aluno1.getDescricao())

let instrutor1 = Instrutor(
    especialidade: "Treino de Superior",
    nome: "Julio Balestrin",
    email: "julio.balestrin@gmail.com")
print("Instrutor:", instrutor1.getDescricao())

let aulaPersonal1 = AulaPersonal(
    aluno: aluno1,
    nome: "Treino de Musculação",
    instrutor: instrutor1)
print(aulaPersonal1.getDescricao())
print()

print("-----------------------------------------------------------------------")

// Criando segundo aluno, instrutor e aula
print()
print("===Criando segundo aluno, instrutor e aula===")
print()
let plano2 = PlanoAnual()
let aluno2 = Aluno(
    matricula: "KTD3571",
    nome: "Kemuel de Matos",
    email: "kemueldematos@gmail.com",
    plano: plano2)
print("Aluno:", aluno2.getDescricao())

let instrutor2 = Instrutor(
    especialidade: "Artes Marciais",
    nome: "Charles do Bronx",
    email: "charlesdobronx@gmail.com")
print("Instrutor:", instrutor2.getDescricao())
print()

let aulaColetiva1 = AulaColetiva(nome: "Treino de Box", instrutor: instrutor2)
aulaColetiva1.inscrever(aluno: aluno2)
print(aulaColetiva1.getDescricao())
print()

print("-----------------------------------------------------------------------")

// Testando método inscrever nos alunos criados
print()
print("===Inscrevendo alunos na aula coletiva e testando erro de aluno repetido===")
print()
aulaColetiva1.inscrever(aluno: aluno2)
print()
aulaColetiva1.inscrever(aluno: aluno1)
print()
print(aulaColetiva1.getDescricao())
print()

//---------------------------------------------------------------

// Criando outros dois alunos para testes
let aluno3 = Aluno(
    matricula: "POO0553",
    nome: "Nicolas Guilherme",
    email: "nicolasguilherme@gmail.com",
    plano: PlanoMensal())

let aluno4 = Aluno(
    matricula: "JJT2773",
    nome: "Vitor Artese",
    email: "vitorartese@gmail.com",
    plano: PlanoMensal())

print("-----------------------------------------------------------------------")

// Criando aparelho para testes
print()
print("===Criando aparelho===")
let aparelho1 = Aparelho(nomeItem: "Supino Reto")

// Testando classe Manutencao
print()
aparelho1.realizarManutencao()
print()

print("-----------------------------------------------------------------------")

// Criando Academia
print()
print("===Criando academia===")
print()
let academia1 = Academia(nomeAcademia: "Iron Berg")
print("Academia:", academia1.nomeAcademia)
print()

// Adicionando aparelho na academia
academia1.adicionarAparelho(aparelho: aparelho1)
print("Aparelhos:", academia1.aparelhos.map {$0.nomeItem})

// Adicionando aulas na academia
academia1.adicionarAula(aula: aulaPersonal1)
academia1.adicionarAula(aula: aulaColetiva1)
print("Aula Disponíveis:", academia1.aulasDisponiveis.map {$0.nome})

// Adicionando instrutores na academia
print()
academia1.contratarInstrutor(instrutor: instrutor1)
academia1.contratarInstrutor(instrutor: instrutor2)
print("Instrutores:")
for (email, instrutor) in academia1.instrutoresContratados {
    print("\(email): \(instrutor.nome)")
}

// Matriculando aluno na academia
print()
print()
print("===Matriculando alunos===")
print()
academia1.matricularAluno(aluno: aluno1)
print("Alunos matriculados:")
for (matricula, aluno1) in academia1.alunosMatriculados {
    print("\(matricula): \(aluno1.nome)")
}
print()

academia1.matricularAluno(aluno: aluno2)
print("Alunos matriculados:")
for (matricula, aluno2) in academia1.alunosMatriculados {
    print("\(matricula): \(aluno2.nome)")
}
print()

academia1.matricularAluno(aluno: aluno3)
print("Alunos matriculados:")
for (matricula, aluno3) in academia1.alunosMatriculados {
    print("\(matricula): \(aluno3.nome)")
}
print()
// Inscrevendo outro aluno na aula coletiva para pode testar limite
aulaColetiva1.inscrever(aluno: aluno3)
print()

// Testando limite de alunos na aula coletiva
academia1.matricularAluno(aluno: aluno4)
print("Alunos matriculados:")
for (matricula, aluno4) in academia1.alunosMatriculados {
    print("\(matricula): \(aluno4.nome)")
}
print()
aulaColetiva1.inscrever(aluno: aluno4)
print()

// Testando outro método para matricular aluno
print("===Matriculando mais alunos===")
academia1.matricularAluno(nome: "Lorenzo Franco", email: "lorenzofranco@gmail.com", matricula: "KRT3874", plano: PlanoMensal())
academia1.matricularAluno(nome: "Gabriel Souza", email: "gabrielsouza@gmail.com", matricula: "OCG9967", plano: PlanoAnual())
print()
print("Alunos matriculados:")
for matricula in academia1.alunosMatriculados.keys {
    print(matricula)
}
print()

// Buscando aluno por número de matrícula
print("===Buscando aluno pela matrícula===")
if let aluno = academia1.buscarAluno(porMatricula: "GJK3041") {
    print("Aluno procurado: \(aluno.nome) (\(aluno.getMatricula()))")
} else {
    print("Aluno não encontrado")
}
print()

// Listando alunos
academia1.listarAlunos()
print()

// Listando aulas
academia1.listarAulas()
print()

// Criando teste de array de aulas
print("===Array teste de Aula===")
let novoArrayAulas = [aulaPersonal1, aulaColetiva1]
for aula in novoArrayAulas {
    print(aula.getDescricao())
}
print()

// Criando teste de array de pessoas
print("===Array teste de Pessoa===")
let novoArrayPessoas = [aluno1, instrutor1]
for pessoa in novoArrayPessoas {
    print(pessoa.getDescricao())
}
print()

print("-----------------------------------------------------------------------")

// Criando extension para academia
print()
print("===Criando e testando Tupla===")
print()
extension Academia {
    func gerarRelatorio() -> (totalAlunos: Int, totalInstrutores: Int, totalAulas: Int) {
        return (
            totalAlunos: alunosMatriculados.count,
            totalInstrutores: instrutoresContratados.count,
            totalAulas: aulasDisponiveis.count)
    }
}

let relatorio = academia1.gerarRelatorio()
print("Total de Alunos: \(relatorio.totalAlunos)")
print("Total de Instrutores: \(relatorio.totalInstrutores)")
print("Total de Aulas: \(relatorio.totalAulas)")
print()
