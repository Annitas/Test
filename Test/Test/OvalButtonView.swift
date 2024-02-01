//
//  OvalButtonView.swift
//  Test
//
//  Created by Anita Stashevskaya on 01.02.2024.
//

import SwiftUI

struct OvalButtonView: View {
    @State var count = 0
    
    var body: some View {
        HStack() {
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
}

#Preview {
    OvalButtonView()
}
