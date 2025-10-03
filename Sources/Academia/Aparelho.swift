// classe aparelho

class Aparelho: Manutencao {

    var nomeItem: String
    private(set) var dataUltimaManutencao: String = "Nenhuma"

    init(nomeItem: String) {
        self.nomeItem = nomeItem
    }

    func realizarManutencao() -> Bool {
        print("Realizando manutenção no aparelho: \(nomeItem).")
        print("Última manutenção realizada em: \(dataUltimaManutencao)")

        dataUltimaManutencao = "30/09/2025"

        print("Data da última manutenção atualizada para: \(dataUltimaManutencao).")

        return true
    }

}