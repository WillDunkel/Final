//
//  ContentView.swift
//  Final
//
//  Created by William Dunkel on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    
    
   
    @State private var question = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.opacity (0.3).ignoresSafeArea ()
                VStack {
                    Text("Magic Eight Ball")
                        .bold()
                        .font(Font.custom("", size: 50))
                    Spacer()
                        .bold()
                    Image("Magic 8 Ball").resizable ().frame(width: 150, height: 150)
                        .padding(3)
                    Spacer()
                    Text("What is your question?").bold()
                    TextField("Question", text: $question)
                        .frame(width: 100, height: 30, alignment: .center)
                    
                    NavigationLink(
                        destination: GameView(question: question),
                        label: {
                            Text("Answer ->")
                                .font(.headline)
                                .foregroundColor(.red)
                                .padding()
                                .frame(width: 150, height: 30, alignment: .center)
                                .cornerRadius(10)
                            
                        }
                    )
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding()
                    .frame(width: 200, height: 50)
                    .cornerRadius(10)
                    .padding()
                    
                    Spacer()
                    Spacer()
                    
                    
                }
                
            }
        }
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
            .autocapitalization(.none)
            
    }
}




