//
//  LoginView.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //header
                HeaderView(
                    title: "Taskly",
                    subtitle: "Quick, Fast, Easy",
                    angle: 10,
                    backgroundColor: .blue
                )

                
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                     TLButton(
                         title: "Log In",
                         background: .blue,
                         height: 40,
                         width: 80
                     ) {
                             //log in
                         viewModel.login()
                     }
                     .offset(x: 100, y: 0)
                }
                .background(Color.blue)
                .padding()
                .offset(y: -100)
                
                //Create a account
                VStack {
                    Text("New around here?")
                
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}

