//
//  ToDoListItemViewViewModel.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/3/24.
//


import FirebaseAuth
import FirebaseFirestore
import Foundation

//item

class ToDoListItemViewViewModel: ObservableObject {
    init() {
        
    }
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uid)
            .collection("list")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
