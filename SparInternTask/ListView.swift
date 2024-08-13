//
//  ListView.swift
//  SparInternTask
//
//  Created by Stanislav on 13.08.2024.
//

import SwiftUI

struct ListView: View {
    
    @State private var modelCard = ModelCard()
    
    var body: some View {
        LazyVStack {
            ForEach(modelCard.productCard) { ProductCard in
                
                Color.gray
                    .frame(height: 1.0)
                
                HStack {
                    ZStack{
                        Image(ProductCard.image)
                            .resizable()
                            .frame(width: 144, height: 144)
                        if ProductCard.badgeTempText == "Новинки" {
                            Text("           " + ProductCard.badgeTempText + "    ")
                                .frame(height: 16)
                                .font(.system (size: 10))
                                .foregroundStyle(.white)
                                .background(.purple)
                                .cornerRadius(6)
                                .offset(x: -38, y: -64)
                        } else if ProductCard.badgeTempText == "Удар по ценам" {
                            Text("                 " + ProductCard.badgeTempText + "    ")
                                .frame(height: 16)
                                .font(.system (size: 10))
                                .foregroundStyle(.white)
                                .background(.pink)
                                .cornerRadius(6)
                                .offset(x: -38, y: -64)
                        } else if ProductCard.badgeTempText == "Цена по карте" {
                            Text("                 " + ProductCard.badgeTempText + "    ")
                                .frame(height: 16)
                                .font(.system (size: 10))
                                .foregroundStyle(.white)
                                .background(.green)
                                .cornerRadius(6)
                                .offset(x: -38, y: -64)
                        }
                        if ProductCard.sale != 0 {
                            Text(String(ProductCard.sale) + "%")
                                .frame(width: 42, height: 20)
                                .font(.system (size: 16))
                                .foregroundStyle(.red)
                                .bold()
                                .offset(x: 51, y: 62)
                        }
                    }
                    .frame(width: 144, height: 144)
                    .cornerRadius(8)
                    .padding([.top, .leading, .bottom], 16)
                    VStack {
                        ZStack {
                            HStack(spacing: 2) {
                                Image("star")
                                    .frame(width: 16, height: 16)
                                Text(String(format: "%g", ProductCard.rating))
                                    .font(.system(size: 12))
                                Color.gray
                                    .frame(width: 1, height: 16)
                                Text("\(ProductCard.reviews) отзывов")
                                    .font(.system(size: 12))
                                    .foregroundStyle(.gray)
                            }
                            .frame(height: 20)
                            .frame(maxWidth: 167, alignment: .leading)
                            .padding(.leading, 8)
                            .offset(x: -16, y: -28)
                            
                            VStack {
                                Text(ProductCard.name)
                                    .font(.system(size: 12))
                                    .frame(maxWidth: 167, alignment: .leading)
                                    .padding(.leading, 8)
                                HStack(spacing: 0) {
                                    Text(ProductCard.country)
                                        .font(.system(size: 12))
                                        .foregroundStyle(.gray)
                                    Text(ProductCard.countryEmoji)
                                        .frame(width: 18, height: 18)
                                }
                                .frame(maxWidth: 167, alignment: .leading)
                                .padding(.leading, 8)
                            }
                            .frame(width: 167, height: 56)
                            .offset(x: -16, y: 10)
                            
                            VStack(spacing: 0) {
                                Button {
                                    print("Action order list")
                                } label: {
                                    Image("actionOrderList")
                                }
                                .frame(width: 32, height: 32)
                                Button {
                                    print("Action favorites")
                                } label: {
                                    if ProductCard.isFavorite == true {
                                        Image("actionFavoritesOn")
                                    }
                                    if ProductCard.isFavorite == false {
                                        Image("actionFavoritesOff")
                                    }
                                }
                                .frame(width: 32, height: 32)
                                
                            }
                            .frame(width: 32, height: 64)
                            .offset(x: 83.5, y: -6)
                        }
                        .frame(width: 199, height: 76)
                        Spacer()
                        HStack(spacing: 0) {
                            VStack(spacing: 0) {
                                HStack(spacing: 1) {
                                    Text(String(Int(ProductCard.price)))
                                        .font(.system (size: 20))
                                        .bold()
                                    Text("\(Int(modf(ProductCard.price).1 * 100))")
                                        .font(.system (size: 16))
                                        .bold()
                                    Image("rubKg")
                                        .frame(width: 20, height: 20)
                                }
                                .frame(width: 77, height: 22)
                                if ProductCard.sale != 0 {
                                    Text(String(Double(round((ProductCard.price / 100 * Double(ProductCard.sale) + ProductCard.price) * 10)) / 10))
                                        .font(.system (size: 12))
                                        .foregroundStyle(.gray)
                                        .strikethrough()
                                        .frame(width: 67, height: 14, alignment: .leading)
                                        .offset(x: -5)
                                }
                            }
                            .offset(x: 6)
                            .frame(width: 81, height: 36)
                            .padding(4)
                            Spacer()
                            Button {
                                print("buy")
                            } label: {
                                Image("basket")
                                    .frame(width: 48, height: 36)
                            }
                            .frame(width: 48, height: 36)
                            .padding(4)
                        }
                        .frame(width: 199, height: 44)
                    }
                    .frame(width: 199, height: 144)
                    Spacer()
                }
                .frame(width: 375.0, height: 176.0)
                
                .background {
                    Color.white
                        .ignoresSafeArea()
                }
            }
        }
    }
}

#Preview {
    ListView()
}
