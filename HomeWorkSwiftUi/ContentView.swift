//
//  ContentView.swift
//  HomeWorkSwiftUi
//
//  Created by qwerty on 04.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAlertPresented: Bool
    @State var value: Double
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button ("Нажать", action: { isAlertPresented = true })
                        .foregroundColor(.black)
                        .padding(.all)
                        .background(.red)
                    Text("Заголовок")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.all)
                        .background(.yellow)
                }
                
                Text("Значение слайдера - \(value)")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Slider(value: $value, in: 0.0...100.0)
                
                NavigationLink {
                    MainView()
                } label: {
                    Text("переход на д/з 3")
                }
                .padding(.top, 20)
                
            }
            
            .alert(
                "Не рабочий алерт",
                isPresented: $isAlertPresented,
                actions: { Button("Закрыть") { isAlertPresented = false } })
            .navigationBarTitle(Text("Д/З 1-2"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isAlertPresented: false, value: 10.0)
    }
}
