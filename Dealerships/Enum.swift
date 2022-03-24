//
//  Enum.swift
//  Dealerships
//
//  Created by admin on 24.03.2022.
//

import Foundation

// MARK: Accessories

enum Accessories: String  {
    case tinting = "тонировка"
    case alarmSystem = "сигнализация"
    case sportsDiscs = "спортивные диски"
    case firstAidKit = "аптечка"
    case fireExtinguisher = "огнетушитель"
}
var accessories: [Accessories] = [Accessories.alarmSystem, Accessories.sportsDiscs, Accessories.tinting]

// MARK: SloganDealerships

enum SloganDealerships {
    case bmvCenter
    case mercedesCenter
    case hondаCenter
    case hyundaiCenter
    case lexusCenter
}
