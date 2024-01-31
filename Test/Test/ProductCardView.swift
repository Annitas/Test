//
//  ProductCardView.swift
//  Test
//
//  Created by Anita Stashevskaya on 31.01.2024.
//

import SwiftUI

struct ProductCardView: View {
    var body: some View {
        ScrollView{
            LazyVStack(alignment: .leading, spacing: 20.0) {
                Image("productCard")
                Text("Добавка \"Липа\" к чаю 200 г")
                    .font(.system(size: 26, weight: .bold, design: .rounded))
                HStack {
                    Image("spanishFlag")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Text("Испания, Риоха")
                }
                
                Text("Описание")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов")
                Text("Основные характеристики")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                Text("Все характеристики")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.green)
                
                Text("Отзывы")
                    .font(.system(size: 23, weight: .bold, design: .rounded))
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<10) {_ in
                            ReviewCardView()
                        }
                    }
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ProductCardView()
}
