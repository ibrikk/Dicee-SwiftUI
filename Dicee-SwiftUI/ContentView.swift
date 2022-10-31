//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Ibrahim Khalilov on 2022-10-31.
//

import SwiftUI

struct ContentView: View {
    
   @State var leftDiceNumber = 1
   @State var rightDiceNUmber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNUmber)
                }
                .padding(.horizontal)
                Spacer()
                Button("Roll") {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNUmber = Int.random(in: 1...6)
                }
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal)
                .background(Color.red)
            }
        }
    }
}


struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


