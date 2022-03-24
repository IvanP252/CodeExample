//
//  Cars.swift
//  Dealerships
//
//  Created by admin on 24.03.2022.
//

import Foundation

// MARK: Cars mark

var hyundai = Car(model: "Hyundai Tucson", color: "Red", buildDate: (data: 02, month: 02, year: 2022), price: 2_300_000, isServiced: false)

var bmw = Car(model: "BMW X6", color: "Blue", buildDate: (data: 02, month: 01, year: 2022), price: 6_358_000, accessories: [.sportsDiscs], isServiced: true)

var mercedes = Car(model: "Mercedes GLC350", color: "Black", buildDate: (data: 25, month: 1, year: 2022), price: 9_238_500, isServiced: false)

var honda = Car(model: "Honda Accord", color: "Red", buildDate: (data: 10, month: 5, year: 2020), price: 3_512_500, isServiced: false)

var lexus = Car(model: "Lexus LX", color: "Green", buildDate: (data: 8, month: 10, year: 2021), price: 8_900_000, isServiced: true)

var kia = Car(model: "KIA", color: "green", buildDate: (data: 8, month: 11, year: 2021), price: 2_300_000, isServiced: false)

var acura = Car(model: "Acura", color: "White", buildDate: (data: 25, month: 2, year: 2022), price: 10_000_000, isServiced: false)

// array cars
var carsList = [bmw, mercedes, honda, hyundai, lexus,acura,kia]
