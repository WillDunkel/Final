//
//  ContentView.swift
//  Final
//
//  Created by William Dunkel on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var loginId = Login()
    @State var name: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    var body: some View {
       
        NavigationView{
            VStack {
                Text("Login")
                    .bold()
                    .font(Font.custom("", size: 70))
                
                
                Spacer()
                Text("Please Enter Your Key Here")
                    .bold()
                VStack{
                    CustomTextField(placeholder: "Key", variable: $loginId.Fname)
                    
                    
                    
                }
                
                    NavigationLink("Login", destination: SwiftUIView())
                
                Spacer()
                Spacer()
                Spacer()
                
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
            .autocapitalization (.none)
    }
}


public struct Login {
    var Id = ""
    var Fname = ""
    var Lname = ""
    var twelve = "12"
    
}
