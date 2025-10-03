// classe Academia

class Academia {

    let nome: String
    private var alunosMatriculados: [String: Aluno] = [:]
    private var instrutoresContratados: [String: Instrutor] = [:]
    private var aparelhos: [Aparelho] = []
    private var aulasDisponiveis: [Aula] = []

    init(nome: String) {
        self.nome = nome
    }


    func adicionarAparelho(_ aparelho: Aparelho) {
         aparelhos.append(aparelho)
         print("Aparelho \(aparelho.getDescricao()) adicionado.")
    }

    func adicionarAula(_ aula: Aula) {
        aula.append(aula)
        print("Aula \(aula.getDescricao()) adicionada.")
    }

    func constratarInstrutor(_ instrutor: Instrutor) {
        instrutoresContratados[instrutor.email] = instrutor
        print("Instrutor \(instrutor.getDescricao()) contratado.")
    }

    func matricularAluno(_ aluno: Aluno) {
        if alunosMatriculados [matricula.aluno] != nil {
            print("O aluno \(matricula.aluno) já está matriculado.")
        } else {
            alunosMatriculados[matricula.aluno] = aluno 
            print("Aluno \(aluno.getDescricao()) matriculado com sucesso.")
        }
    }

    func matricularAluno(nome: String, email: String, matricula: String, plano: String) -> Aluno {
        let novoAluno = Aluno(nome: String, email: String, matricula: String, plano: String)
        matricularAluno(novoAluno)
        return novoAluno
    }

    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        return alunosMatriculados[matricula]
    }

    func listarAlunos() {
        print("--- Lista de Alunos Matriculados ---")
        if alunosMatriculados.isEmpty {
            print("Nenhum aluno matriculado.")
        } else {
            let alunosOrdenados = alunosMatriculados.values.sorted { $0.nome < $1.nome }
            for aluno in alunosOrdenados {
                print(aluno.getDescricao())
            }
        }
        print("--- Fim da Lista ---")
    }

    func listarAulas() {
        print("--- Lista de Aulas Disponíveis ---")
        if aulasDisponiveis.isEmpty {
            print("Nenhuma aula disponível.")
        } else {
            for aula in aulasDisponiveis {
                print(aula.getDescricao())
            }
        }
        print("--- Fim da Lista ---")
    }
}

