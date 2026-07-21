//
//  ContentView.swift
//  Desafio2 - 28-05
//
//  Created by Turma01-15 on 28/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var dist: Float = 0.0
    @State private var temp: Float = 0.0
    @State private var result: Float = 0.0
    @State private var mostrarAlerta = false
    @State private var corTras: Color = Color("RosaClaro")
    @State private var foto: String = "que"
    
    var body: some View {
        ZStack {
            ZStack {
                Rectangle()
                    .fill(corTras)
                    .ignoresSafeArea()
            }
            ZStack {
                VStack (spacing: 5){
                    Text("Digite a **distância** (km):")
                        .font(.system(size: 22))
                        .font(.title)
                        .padding(5)
                    // Spacer()
                    TextField("0", value: $dist, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(15)
                        .keyboardType(.decimalPad)
                        .textContentType(.oneTimeCode)
                        .multilineTextAlignment(.center)
                        .frame(width: 220)
                    
                        .padding(5)
                    // Spacer()
                    Text("Digite o **tempo** (h):")
                        .font(.system(size: 22))
                        .font(.title)
                        .padding(5)
                    // Spacer()
                    TextField("0", value: $temp, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(15)
                        .keyboardType(.decimalPad)
                        .textContentType(.oneTimeCode)
                        .multilineTextAlignment(.center)
                        .frame(width: 220)
                    
                        .padding(5)
                    // Spacer()
                    Button(action: {
                        calcular()
                    }){
                        Text("Calcular")
                            .font(.system(size: 28))
                            .frame(width: 150, height: 60)
                            .background(Color("MarromClaro"))
                            .foregroundStyle(Color.white)
                            .cornerRadius(15)
                        .alert("Cuidado", isPresented: $mostrarAlerta) {
                            Button("Tentar novamente", role: .cancel) {}
                        } message: {
                            Text("Velocidade fora do intervalo!")
                        }
                    }
                    // Spacer()
                    Text(String(format: "%.2f km/h", result))
                        .font(.system(size: 40))
                        .font(.title)
                        .padding(5)
                    // Spacer()
                    
                    Image (foto)
                        .resizable()
                        .scaledToFit()
                        .scaledToFill()
                        .frame(width: 280, height: 280)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    VStack(spacing: 6) {
                        LinhaTabela(animal: "TARTARUGA", velocidade: "(0 - 9.9km/h)", cor: Color("VerdeClaro"))
                        LinhaTabela(animal: "ELEFANTE", velocidade: "(10 - 29.9km/h)", cor: Color("AzulClaro"))
                        LinhaTabela(animal: "AVESTRUZ", velocidade: "(30 - 69.9km/h)", cor: Color("LaranjaClaro"))
                        LinhaTabela(animal: "LEÃO", velocidade: "(70 - 89.9km/h)", cor: Color("AmareloClaro"))
                        LinhaTabela(animal: "GUEPARDO", velocidade: "(90 - 130km/h)", cor: Color("VermelhoClaro"))
                    }
                        .padding(20)
                        .background(Color("MarromClaro"))
                        .cornerRadius(30)
                        .foregroundStyle(Color.white)
                }}}}
    func calcular(){
        result = dist/temp
        
        switch result {
        case 0...9.99:
            corTras = Color("VerdeClaro")
            foto = "tartaruga"
        case 10...29.99:
            corTras = Color("AzulClaro")
            foto = "elefante"
        case 30...69.99:
            corTras = Color("LaranjaClaro")
            foto = "avestruz"
        case 70...89.99:
            corTras = Color("AmareloClaro")
            foto = "leao"
        case 90...130:
            corTras = Color("VermelhoClaro")
            foto = "guepardo"
        case 130,01...:
            mostrarAlerta = true
        default:
            corTras = Color("RosaClaro")
            foto = "que"
            result = 0
        }
        
    }
    
}
struct LinhaTabela: View {
    var animal: String
    var velocidade: String
    var cor: Color
    
    var body: some View {
        HStack(spacing: 12) {
            Text(animal)
                .frame(width: 100, alignment: .center)
            
            Text(velocidade)
                .frame(width: 135, alignment: .center)
            
            Circle()
                .fill(cor)
                .frame(width: 16, height: 16)
        }
        .font(.system(size: 16))
    }
}
#Preview {
    ContentView()
}
