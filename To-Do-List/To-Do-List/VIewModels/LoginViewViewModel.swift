//
//  LoginViewViewModel.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func login() {
        guard validate() else {
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in your account information"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        return true
    }
}
