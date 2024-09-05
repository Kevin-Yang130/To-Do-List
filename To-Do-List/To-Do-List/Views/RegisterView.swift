//
//  RegisterView.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            //HeaderView
            HeaderView(
                title: "Register",
                subtitle: "Start your tasks",
                angle: 10,
                backgroundColor: .blue
            )
            .offset(y: -20)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
            }
            .offset(y: -110)
            
            TLButton(
                title: "Create Account",
                background: .blue,
                height: 40,
                width: 150
            ) {
                viewModel.register()
            }
            .offset(y: -260)
            
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
