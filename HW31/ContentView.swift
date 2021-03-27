//
//  ContentView.swift
//  HW31
//
//  Created by Вера Ксенофонтова on 26.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var state = -1
    @State var RedCircle = ColorCircle(color: .darkRed)
    @State var YellowCircle = ColorCircle(color: .darkYellow)
    @State var GreenCircle = ColorCircle(color: .darkGreen)
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                RedCircle
                YellowCircle
                GreenCircle
                Spacer()
                NextStateButton
            }.padding()
        }
    }
    
    private var NextStateButton: some View {
        Button(action: {
            nextStateButtonAction()
        }, label: {
            Text("NEXT")
                .padding()
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(lineWidth: 4)
                        .background(Color.blue)
                )
                .font(.largeTitle)
                .foregroundColor(.white)
                .cornerRadius(30)
        })
    }
    
    private func nextStateButtonAction() {
        state += 1
        state %= 3
        switch state {
        case 0:
            RedCircle = ColorCircle(color: .red)
            YellowCircle = ColorCircle(color: .darkYellow)
            GreenCircle = ColorCircle(color: .darkGreen)
        case 1:
            RedCircle = ColorCircle(color: .darkRed)
            YellowCircle = ColorCircle(color: .yellow)
            GreenCircle = ColorCircle(color: .darkGreen)
        case 2:
            RedCircle = ColorCircle(color: .darkRed)
            YellowCircle = ColorCircle(color: .darkYellow)
            GreenCircle = ColorCircle(color: .green)
        default: print("wrong counting")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

