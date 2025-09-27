import Foundation

class Aparelho: Manutencao {
    var nomeItem: String
    private(set) var dataUltimaManutencao: String

    init(nomeItem: String) {
        self.nomeItem = nomeItem
        self.dataUltimaManutencao = "Nenhuma"
    }

    func realizarManutencao() -> Bool {
        print("Aparelho: \(self.nomeItem)")
        print("Realizando manutenção...")
        self.dataUltimaManutencao = "09/09/2025"
        print("Manutenção bem sucedida! Última manutenção feita em: \(self.dataUltimaManutencao)")
        return true
    }
}
