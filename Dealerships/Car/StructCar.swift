//
//  Car.swift
//  Dealerships
//
//  Created by admin on 24.03.2022.
//

import Foundation

struct Car: CarProtocol {
    var model: String
    var color: String
    var buildDate: (data: Int, month: Int, year: Int)
    var price: Int
    var accessories: [Accessories] = []
    var isServiced: Bool
}

