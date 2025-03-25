//
//  ContentView.swift
//  Aula01
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var idadehumanaDigitada: String = ""
    @State var dogAge: String = ""
    
    var body: some View {

        VStack(spacing: 20) {
            Image(systemName: "cachorro")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculadora de Idade Canina")
            
            TextField(
                "Digite a idade humana",
                text: $idadehumanaDigitada
            )
            Button( action: calcularIdade){
                Text("Calcular")
                    .padding()
                    .frame(width: 150)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: Limpar){
                Text("Limpar")
                    .padding()
                    .frame(width: 150)
                    .background(Color.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            if !dogAge.isEmpty {
                Text("Idade em anos caninos: \(dogAge)")
            }
        }
        .padding()
        
    }
    
    func calcularIdade() {
        
        if let age = Int(idadehumanaDigitada){
            let result = age * 7
            dogAge = "\(result) anos"
        } else{
            dogAge = "Digite um número válido"
        }
    }
}

func Limpar(){
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

