//
//  ToDoListItemsView.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel : ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    private var userId: String
    
    
    init(userId: String) {
        self.userId = userId
        // users/<id>/list/<entries>
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/list")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item : item)
                        .swipeActions {
                            Button("Delete") {
                                //Delete an item
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
            }
            .navigationTitle("Taskly List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented:
                                $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(
        userId: "wGHvhKdaIXcHn086cyGhzKC9Cl12"
    )
}
