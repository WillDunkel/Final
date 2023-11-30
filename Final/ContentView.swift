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
            Text("Login")
                .bold()
                .font(Font.custom("", size: 70))
            
            
            Spacer()
            Text("Please Enter Your Key Here")
                .bold()
            HStack{
                Group {
                    if showPassword {
                        TextField("key",
                                  text: $password,
                                  prompt: Text("Key").foregroundColor(.black)) //change the color of the textfleid Placeholder
                    } else {
                        SecureField("Key", //create a secure text field
                                    text: $password,
                                    prompt: Text("Key").foregroundColor(.black)) // change the color of the textfeild Placeholder
                    }
                }
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.black, lineWidth: 2) // add rounded corner to a textfiedl and change it colour
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.black) // how to change image based in a State variable
                }
            }
            Button(action: {
                if password == "dog" {
                } else {
                    print("Incorrect password. Try again.")
                }
            }) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                
                
            }
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

public struct Login {
    
    
}

