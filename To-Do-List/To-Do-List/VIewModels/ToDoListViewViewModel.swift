//
//  ToDoListViewViewModel.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//

import FirebaseFirestore
import Foundation


//list of items
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// delete to do list item 
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("list")
            .document(id)
            .delete()
    }
}
