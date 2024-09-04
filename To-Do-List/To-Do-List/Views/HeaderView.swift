//
//  HeaderView.swift
//  To-Do-List
//
//  Created by Kevin Yang-Li on 9/4/24.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color
    
    var body: some View {
        //Header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 70))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 55)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 320)
        .offset(y:-120)
    }
}

#Preview {
    HeaderView(
        title: "Title",
        subtitle: "subTitle",
        angle: 10.0,
        backgroundColor: .blue
    )
}
