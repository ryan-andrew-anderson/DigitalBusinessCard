//
//  InfoView.swift
//  RyanCard
//
//  Created by Ryan Anderson on 1/11/22.
//

import SwiftUI


struct InfoView: View {
    
    let text : String
    let imageName : String
    let color : Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color("Background Color"))
            .frame(height: 50, alignment: .center)
            .overlay(
                HStack {
                    Image(systemName: imageName).foregroundColor(color)
                    Text(text).foregroundColor(Color("Info Color"))
                })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill", color: .blue)
            .previewLayout(.sizeThatFits)
    }
}
