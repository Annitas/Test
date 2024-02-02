//
//  OvalButtonView.swift
//  Test
//
//  Created by Anita Stashevskaya on 01.02.2024.
//

import SwiftUI

struct BottomPanelView: View {
    @State var count = 0
    @State private var isKgSelected = true
    var selectedB = "кг"
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    isKgSelected = true
                }) {
                    Text("кг")
                        .frame(width: 100)
                        .padding(5)
                        .background(isKgSelected ? Color.white : Color("buttonColor"))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                }
                Button(action: {
                    isKgSelected = false
                }) {
                    Text("шт")
                        .frame(width: 100)
                        .padding(5)
                        .background(!isKgSelected ? Color.white : Color("buttonColor"))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                }
            }
            .padding(2)
            .frame(width: UIScreen.main.bounds.width - 20)
            .background(Color("buttonColor"))
            .cornerRadius(6)
            
            HStack() {
                Text("55.9 р/\(isKgSelected ? "кг" : "шт")")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                Spacer()
                Button(action: {
                    if count > 0 {
                        count -= 1
                    }
                }) {
                    Text("-")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                }
                .frame(width: 44, height: 44)
                .background(Color.green)
                .clipShape(Circle())
                
                Text("\(count)")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black)
                    .frame(width: 44, height: 44)
                    .background(Color.white)
                    .clipShape(Circle())
                
                Button(action: {
                    count += 1
                }) {
                    Text("+")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                }
                .frame(width: 44, height: 44)
                .background(Color.green)
                .clipShape(Circle())
            }
        }
        .padding()
    }
}

#Preview {
    BottomPanelView()
}
