// classe aula coletiva

class AulaColetiva: Aula {

    private(set) var alunosInscritos: [String: Aluno] = [:]
    let capacidadeMaxima: Int

    init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int = 25) {
        self.capacidadeMaxima = capacidadeMaxima
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {

        if alunosInscritos.count >= capacidadeMaxima {
            print("A aula atingiu o número de inscritos permitidos. Sinto muito!")
            return false
        }

        if alunosInscritos[aluno.matricula] != nil {
            print("O aluno \(aluno.nome) já está inscrito nessa aula.")
            return false
        }

        alunosInscritos[aluno.matricula] = aluno
        print("O aluno \(aluno.nome) foi matriculado na aula \(self.nome) com sucesso!")
        return true
    }

    override func getDescricao() -> String {
        return "\(super.getDescricao()) Vagas:\(alunosInscritos.count)/\(capacidadeMaxima)"
    }

}