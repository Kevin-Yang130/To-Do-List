//
//  ToDoListItemsView.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    
    private var userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Taskly List")
            .toolbar {
                Button {
                    //add a task
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(
        userId: ""
    )
}
