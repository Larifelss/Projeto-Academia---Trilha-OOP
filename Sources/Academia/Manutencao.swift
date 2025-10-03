// protocolo manutenção 

protocol Manutencao {
    var nomeItem: String {get set}
    var dataUltimaManutencao: String {get set}

    func realizarManutencao() -> Bool 
}