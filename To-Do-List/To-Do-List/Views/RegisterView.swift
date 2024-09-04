//
//  RegisterView.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
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
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
            }
            .offset(y: -110)
            
            TLButton(
                title: "Create Account",
                background: .blue,
                height: 40,
                width: 150
            ) {
                //register the new user
            }
            .offset(y: -260)
            
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
