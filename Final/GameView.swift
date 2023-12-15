//
//  GameView.swift
//  Final
//
//  Created by William Dunkel on 12/13/23.
//

import SwiftUI

struct GameView: View {
    var question: String
    @State private var rotation = 0.0
    @State private var randomValue = 0
    @State private var response = ""
    var body: some View {
        ZStack{
            Color.blue.opacity (0.3).ignoresSafeArea ()
            VStack{
                HStack{
                    Text("Question: ")
                    Text("\(question)")
                }
                        .bold()
                        .font(Font.custom("", size: 30))
                    Spacer()
                        .bold()
                
                Image("8ball")
                    .resizable ()
                    .frame (width: 150, height: 150)
                    .rotationEffect(.degrees (rotation))
                    .rotation3DEffect(.degrees (rotation), axis: (x: 1, y: 1, z: 0))
                    .padding(3)
                Spacer()
                VStack{
                    Button("Shake"){
                        chooseRandom (times: 3)
                        withAnimation(.interpolatingSpring(stiffness: 10, damping: 2)) {
                            rotation += 360
                        }
                    }
                    .font(.title)
                    .padding(50)
                    Text("Answer: \(response)")
                }
                Text("")
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
    
    
    struct GameView_Previews: PreviewProvider {
        static var previews: some View {
            GameView(question: "")
        }
    }
    
    func chooseRandom (times: Int) {
        if times > 0 {
            DispatchQueue.main.asyncAfter (deadline: .now() + 1) {
                randomValue = Int.random(in: 1...6)
                chooseRandom(times: times - 1)
            }
        }else {
            switch randomValue {
            case 1:
                response = "Yes"
            case 2:
                response = "No"
            case 3:
                response = "Maybe"
            case 4:
                response = "Ask again later"
            case 5:
                response = "Cannot predict now"
            case 6:
                response = "Outlook not so good"
            default:
                response = "Invalid value"
            }
        }
    }
}


