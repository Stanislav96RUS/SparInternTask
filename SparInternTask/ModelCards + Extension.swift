//
//  ModelCards + Extension.swift
//  SparInternTask
//
//  Created by Stanislav on 10.08.2024.
//

import SwiftUI

var modelCards = [
    ProductCard(name: "Энергетический Напиток AdrenaIine Rush 0,449л ж/б", image: "energyDrink", price: 99.90, sale: 0, badgeTempText: "Новинки", country: "Франция", countryEmoji: "🇫🇷", isFavorite: false, rating: 4.1, reviews: 153),
    ProductCard(name: "Огурцы тепличные cадово-огородные", image: "cucumber", price: 120.90, sale: 25, badgeTempText: "Удар по ценам", country: "CША", countryEmoji: "🇺🇸", isFavorite: true, rating: 4.3, reviews: 129),
    ProductCard(name: "Яблоки красные новый урожай", image: "apple", price: 120.90, sale: 0, badgeTempText: "Цена по карте", country: "Россия", countryEmoji: "🇷🇺", isFavorite: true, rating: 4.9, reviews: 253),
    ProductCard(name: "Энергетический Напиток AdrenaIine Rush 0,449л ж/б", image: "energyDrink", price: 99.90, sale: 0, badgeTempText: "Новинки", country: "Франция", countryEmoji: "🇫🇷", isFavorite: false, rating: 4.1, reviews: 153),
    ProductCard(name: "Огурцы тепличные cадово-огородные", image: "cucumber", price: 120.90, sale: 25, badgeTempText: "Удар по ценам", country: "CША", countryEmoji: "🇺🇸", isFavorite: true, rating: 4.3, reviews: 129),
    ProductCard(name: "Яблоки красные новый урожай", image: "apple", price: 120.90, sale: 0, badgeTempText: "Цена по карте", country: "Россия", countryEmoji: "🇷🇺", isFavorite: true, rating: 4.9, reviews: 253),
    ProductCard(name: "Энергетический Напиток AdrenaIine Rush 0,449л ж/б", image: "energyDrink", price: 99.90, sale: 0, badgeTempText: "Новинки", country: "Франция", countryEmoji: "🇫🇷", isFavorite: false, rating: 4.1, reviews: 153),
    ProductCard(name: "Огурцы тепличные cадово-огородные", image: "cucumber", price: 120.90, sale: 25, badgeTempText: "Удар по ценам", country: "CША", countryEmoji: "🇺🇸", isFavorite: true, rating: 4.3, reviews: 129),
    ProductCard(name: "Яблоки красные новый урожай", image: "apple", price: 120.90, sale: 0, badgeTempText: "Цена по карте", country: "Россия", countryEmoji: "🇷🇺", isFavorite: true, rating: 4.9, reviews: 253),
]

extension GridView {
    @Observable
    class ModelCard {
        var productCard = modelCards
    }
}

extension ListView {
    @Observable
    class ModelCard {
        var productCard = modelCards
    }
}
