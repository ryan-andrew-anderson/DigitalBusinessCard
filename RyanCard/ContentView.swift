//
//  ContentView.swift
//  RyanCard
//
//  Created by Ryan Anderson on 1/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //            HEX(#AA1923)
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("Ryan")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color("Background Color"), lineWidth: 5))
                Text("Ryan A. Anderson")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Background Color"))
                Text("iOS Developer")
                    .foregroundColor(Color("Background Color"))
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "(435)215-9307", imageName: "phone.fill", color: .green)
                InfoView(text: "ryan.anderson.dhhs@gmail.com", imageName: "envelope.fill", color: Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

