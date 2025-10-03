// classe plano anual

class PlanoAnual: Plano{

    init() {
        super.init(nome: "Plano Anual (Promocional)")
    }

    override func calcularMensalidade() -> Double {
      
       let custoTotalAnual = 120.0 * 12
       let desconto = custoTotalAnual * 0.20
       let custoComDesconto = custoTotalAnual - desconto
       
       return custoComDesconto / 12
    }
}