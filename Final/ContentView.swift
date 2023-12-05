//
//  ContentView.swift
//  Final
//
//  Created by William Dunkel on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    var body: some View {
        VStack {
            Text("Slap Jack")
                .bold()
                .font(Font.custom("", size: 70))
            Spacer()
            
                .bold()
                .padding(3)
            
            Button("Play"){
                
            }
            NavigationLink("Game", destination: GameView())
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                .padding()
            Spacer()
            Spacer()
        }
        Spacer()
        Spacer()
        Spacer()
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTextField: View { let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization (.none)
    }
}


struct GameView: View {
    var body: some View {
        HStack{
            Text("hi")
        }
    }
}
