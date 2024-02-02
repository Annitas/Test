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
                    HStack() {
                        Button(action: {}
                        ) {
                            Image(systemName: "arrow.backward")
                                .resizable()
                                .frame(width: 23, height: 20)
                                .foregroundColor(.green)
            
                        }
                        .padding(5)
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "cart")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.green)
                        }
                        .padding(5)
                        Button(action: {}) {
                            Image(systemName: "square.and.arrow.up")
                                .resizable()
                                .frame(width: 20, height: 25)
                                .foregroundColor(.green)
                        }
                        .padding(5)
                        Button(action: {}) {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.green)
                        }
                        .padding(5)
                    }
                    .padding(.horizontal, 15.0)
                    
                    Divider()
            VStack(alignment: .leading, spacing: 20.0) {
                ZStack {
                    Color.green
                    Text("Цена по карте")
                        .foregroundColor(.white)
                        .padding(3)
                }
                .frame(width: 125)
                .cornerRadius(5)
                    
                Image("productCard")
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                    Text("4.1")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    Text("| 19 отзывов")
                        .foregroundColor(.gray)
                }
                
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
                    Button(action: { }
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
            Divider()
            BottomPanelView()
        }
    }
}

#Preview {
    ProductCardView()
}
