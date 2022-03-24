//
//  Dealership.swift
//  Dealerships
//
//  Created by admin on 24.03.2022.
//

import Foundation

// MARK: BMW
class BMWCenter: Dealerships {}
var bmvCenter = BMWCenter(name: "BMWCenter", showroomCapacity: 7, stockCars: [], showroomCars: [], slogan: [.bmvCenter])

// MARK: Mercedes
class MercedesCenter: Dealerships {}
var mercedesCenter = MercedesCenter(name: "MercedesCenter", showroomCapacity: 3, stockCars: [], showroomCars: [], slogan: [.mercedesCenter])

// MARK: Hondа
class HondаCenter: Dealerships {}
var hondаCenter = MercedesCenter(name: "HondаCenter", showroomCapacity: 8, stockCars: [], showroomCars: [], slogan: [.hondаCenter])

// MARK: Hyundai
class HyundaiCenter: Dealerships {}
var hyundaiCenter = HyundaiCenter(name: "HyundaiCenter", showroomCapacity: 50, stockCars: [], showroomCars: [], slogan: [.hyundaiCenter])

// MARK: Lexus
class LexusCenter: Dealerships {}
var lexusCenter = LexusCenter(name: "LexusCenter", showroomCapacity: 6, stockCars: [], showroomCars: [], slogan: [.lexusCenter])


