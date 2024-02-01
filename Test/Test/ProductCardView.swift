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
                Text("Производство")
                    .font(.system(size: 18, weight: .regular, design: .rounded))
                Text("Энергетическая ценность, ккал/100г")
                    .font(.system(size: 18, weight: .regular, design: .rounded))
                Text("Жиры/100г")
                    .font(.system(size: 18, weight: .regular, design: .rounded))
                Text("Белки/100г")
                    .font(.system(size: 18, weight: .regular, design: .rounded))
                Text("Углеводы/100г")
                    .font(.system(size: 18, weight: .regular, design: .rounded))
                
                
                
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
                HStack {
                    Spacer()
                    Button(action: {
                        // action
                    }
                    ) {
                        Text("Оставить отзыв")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .padding(10)
                            .frame(width: 300, height: 40, alignment: .center)
                            .foregroundColor(.green)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.green, lineWidth: 2)
                            )
                    }
                    Spacer()
                }

            }
            .padding()
        }
    }
}

#Preview {
    ProductCardView()
}
