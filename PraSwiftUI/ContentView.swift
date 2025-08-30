//
//  PessoaView.swift
//  Exercícios
//
//  Created by Jonathas Motta on 28/08/25.
//

import SwiftUI

// Estrutura da Pessoa
struct PessoaStruct {
    var nomePessoa: String = "Jonathas"
    var idadePessoa: Int = 28
    // Func que retorna a frase
    func fraseDescricao() -> String {
       return "\(nomePessoa) tem \(idadePessoa) anos"
    }
    
    func categoriaEtaria() -> String {
        switch idadePessoa {
        case 0...12:
            return "Criança"
        case 13...17:
            return "Adolescente"
        case 18...59:
            return "Adulto"
        default:
            return "Idoso"
        }
    }
}

struct PessoaView: View {
    // Variavel tipo PessoaStruct
    let pessoaView: PessoaStruct
    @State private var idadeView: Int
    // Incializador para receber valores direto de PessoaStruct
    init() {
        let ini = PessoaStruct()
        pessoaView = ini
        _idadeView = State(initialValue: ini.idadePessoa)
    }
    
    var body: some View {
        // Variavel para atualizar idade na frase retornada da Func
        let fraseAtualizada = PessoaStruct(idadePessoa: idadeView)
        ZStack {
            Color.purple.opacity(0.3)
                .ignoresSafeArea()
            VStack {
                Text("\(fraseAtualizada.fraseDescricao())")
                    .font(.headline)
                    .padding()
                
                Text("É \(fraseAtualizada.categoriaEtaria())")
                    .padding()
                
                Button("Fazer aniversário") {
                    idadeView += 1
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(21)
                
                Button("Resetar") {
                    idadeView = 0
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(21)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple.opacity(0.001))
    }
}
    
#Preview {
    PessoaView()
}
