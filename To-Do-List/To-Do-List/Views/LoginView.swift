//
//  LoginView.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            //Header
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.blue)
                    .rotationEffect(Angle(degrees: 15))
                
                VStack {
                    Text("Taskly")
                        .font(.system(size: 70))
                        .foregroundColor(Color.white)
                        .bold()
                    
                    Text("Get things Done")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 30)
                
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y:-96)

            //login Form
            
            
            //Createa account
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
