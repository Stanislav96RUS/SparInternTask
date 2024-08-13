//
//  GridView.swift
//  SparInternTask
//
//  Created by Stanislav on 10.08.2024.
//

import SwiftUI

struct GridView: View {
    @State private var modelCard = ModelCard()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 8) {
            ForEach(modelCard.productCard) { ProductCard in
                VStack(spacing: 0) {
                    ZStack {
                        Image(ProductCard.image)
                            .resizable()
                            .frame(width: 168, height: 168)
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
                        .offset(x: 68, y: -52)
                        if ProductCard.badgeTempText == "Новинки" {
                            Text("           " + ProductCard.badgeTempText + "    ")
                                .frame(height: 16)
                                .font(.system (size: 10))
                                .foregroundStyle(.white)
                                .background(.purple)
                                .cornerRadius(6)
                                .offset(x: -58, y: -76)
                        } else if ProductCard.badgeTempText == "Удар по ценам" {
                            Text("                 " + ProductCard.badgeTempText + "    ")
                                .frame(height: 16)
                                .font(.system (size: 10))
                                .foregroundStyle(.white)
                                .background(.pink)
                                .cornerRadius(6)
                                .offset(x: -58, y: -76)
                        } else if ProductCard.badgeTempText == "Цена по карте" {
                            Text("                 " + ProductCard.badgeTempText + "    ")
                                .frame(height: 16)
                                .font(.system (size: 10))
                                .foregroundStyle(.white)
                                .background(.green)
                                .cornerRadius(6)
                                .offset(x: -58, y: -76)
                        }
                        if ProductCard.sale != 0 {
                            Text(String(ProductCard.sale) + "%")
                                .frame(width: 42, height: 20)
                                .font(.system (size: 16))
                                .foregroundStyle(.red)
                                .bold()
                                .offset(x: 62, y: 74)
                        }
                        HStack(spacing: 2) {
                            Image("star")
                                .frame(width: 16, height: 16)
                            Text(String(format: "%g", ProductCard.rating))
                                .font(.system(size: 12))
                        }
                        .frame(width: 41, height: 20)
                        .offset(x: -63, y: 74)
                    }
                    .frame(width: 168, height: 168)
                    VStack(spacing: 0) {
                        VStack(spacing: 0) {
                            Text(ProductCard.name)
                                .font(.system(size: 12))
                                .frame(maxWidth: 152, alignment: .leading)
                                .frame(height: 44)
                            HStack(spacing: 4) {
                                Text(ProductCard.country)
                                    .font(.system(size: 12))
                                    .foregroundStyle(.gray)
                                Text(ProductCard.countryEmoji)
                                    .frame(width: 18, height: 18)
                            }
                            .frame(maxWidth: 152, alignment: .leading)
                            .frame(height: 22)
                        }
                        .frame(width: 168, height: 66)
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
                                .frame(width: 23, height: 36)
                            Button {
                                print("buy")
                            } label: {
                                Image("basket")
                                    .frame(width: 48, height: 36)
                            }
                            .frame(width: 48, height: 36)
                            .padding(4)
                        }
                        .frame(width: 168, height: 44)
                    }
                    .frame(width: 168, height: 110)
                }
                .frame(width: 168, height: 278)
            }
            .frame(width: 168.0, height: 278.0)
            .background {
                Color.white
                    .ignoresSafeArea()
            }
            .cornerRadius(16)
            .shadow(radius: 8)
        }
        .padding(10)
    }
}
#Preview {
    GridView()
}
