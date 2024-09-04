//
//  TLButton.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/4/24.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let height: CGFloat
    let width: CGFloat
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(background)
                    .frame(width: width, height: height)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(
        title : "title",
        background : .blue,
        height: 40,
        width: 80
    ) {
        //action
    }
}
