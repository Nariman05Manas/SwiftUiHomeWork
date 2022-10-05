//
//  ProfileView.swift
//  HomeWorkSwiftUi
//
//  Created by qwerty on 05.10.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var userName: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image("VK.com-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 100.0)
            
            Spacer()
            VStack(alignment: .center,
                   spacing: 0) {
                TextField("Email или номер телефона", text: $userName)
                    .padding(.horizontal, 10)
                    .frame(width: 350, height: 50, alignment: .center)
                    .font(.title2)
                    .border(.gray)
                    .cornerRadius(10)
                TextField("Пароль", text: $password)
                    .padding(.horizontal, 10)
                    .frame(width: 350, height: 50, alignment: .center)
                    .font(.title2)
                    .border(.gray)
                    .cornerRadius(10)
            }
            
                   .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 2))
                   .padding(.horizontal, 30)
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
