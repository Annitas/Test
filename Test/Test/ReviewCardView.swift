//
//  ReviewCardView.swift
//  Test
//
//  Created by Anita Stashevskaya on 31.01.2024.
//

import SwiftUI

//struct ReviewCardView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//

struct ReviewCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Александр В")
                .font(.system(size: 20, weight: .bold, design: .rounded))
            Text("7 мая 2021")
                .font(.system(size: 17, weight: .ultraLight, design: .rounded))
            HStack {
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.leadinghalf.fill")
            }
            .foregroundColor(.orange)
            .font(.caption)
            Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                .font(.system(size: 18, weight: .light))
                .padding(5)
        }
        .padding()
        .background(Color.white)
        .frame(width: 290, height: 170)
        .cornerRadius(15)
        .shadow(radius: 2)
    }
}

#Preview {
    ReviewCardView()
}
