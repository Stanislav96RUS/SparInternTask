//
//  Model.swift
//  SparInternTask
//
//  Created by Stanislav on 10.08.2024.
//

import Foundation
import SwiftUI

struct ProductCard: Identifiable {
    let name: String
    let image: String
    let price: Double
    let sale: Int
    let badgeTempText: String
    let country: String
    let countryEmoji: String
    let isFavorite: Bool
    let id = UUID()
    let rating: Double
    let reviews: Int
}
