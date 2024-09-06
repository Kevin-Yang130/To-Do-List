//
//  NewItemView.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import SwiftUI

    struct NewItemView: View {
    
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Task")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 30)
            
            Form {
                //Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //date
                DatePicker("Due Date", selection:  $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //Button
                TLButton(title: "Save", 
                         background: .blue,
                         height: 40,
                         width: 100) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                    
                }.offset(x: 105)
                    .padding(5)
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("Error"),
                    message: Text("Please fill in all fields and select and up-to-date date"))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
