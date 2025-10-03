import Foundation


let academia = Academia(nome: "Academia POO 360")


let planoMensal = PlanoMensal()
let planoAnual = PlanoAnual()


let instrutor1 = Instrutor(nome: "Larissa Felipe", email: "larissa@academia.com")
let instrutor2 = Instrutor(nome: "Maria Eduarda", email: "maria@academia.com")

academia.contratarInstrutor(instrutor: instrutor1)
academia.contratarInstrutor(instrutor: instrutor2)


let aluno1 = academia.matricularAluno(nome: "Ygor Santos", matricula: "000001", plano: planoMensal)
let aluno2 = academia.matricularAluno(nome: "Silvio Junior", matricula: "000002", plano: planoAnual)


let aulaPersonal = AulaPersonal(instrutor: instrutor1, aluno: aluno1)
let aulaColetiva = AulaColetiva(instrutor: instrutor2, capacidadeMaxima: 3)

academia.adicionarAula(aula: aulaPersonal)
academia.adicionarAula(aula: aulaColetiva)


_ = aulaColetiva.inscreverAluno(aluno: aluno1) 
_ = aulaColetiva.inscreverAluno(aluno: aluno2) 

let aluno3 = academia.matricularAluno(nome: "Marlene Machado", matricula: "000003", plano: planoMensal)
_ = aulaColetiva.inscreverAluno(aluno: aluno3) 

let aluno4 = academia.matricularAluno(nome: "Mario Felipe", matricula: "000004", plano: planoAnual)
_ = aulaColetiva.inscreverAluno(aluno: aluno4) 


academia.listarAulas()
academia.listarAlunos()


let arrayAulas: [Aula] = [aulaPersonal, aulaColetiva]
for aula in arrayAulas {
    print(aula.getDescricao())
}


let arrayPessoas: [Pessoa] = [aluno1, aluno2, instrutor1, instrutor2]
for pessoa in arrayPessoas {
    print(pessoa.getDescricao())
}


extension Academia {
    func gerarRelatorio() -> (totalAlunos: Int, totalInstrutores: Int, totalAulas: Int) {
        return (totalAlunos: alunosMatriculados.count,
                totalInstrutores: instrutoresContratados.count,
                totalAulas: aulasDisponiveis.count)
    }
}

let relatorio = academia.gerarRelatorio()
print("--- Relatório da Academia ---")
print("Total de Alunos: \(relatorio.totalAlunos)")
print("Total de Instrutores: \(relatorio.totalInstrutores)")
print("Total de Aulas: \(relatorio.totalAulas)")
print("-----------------------------")



