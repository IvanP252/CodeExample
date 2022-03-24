//
//  Extension.swift
//  Dealerships
//
//  Created by admin on 24.03.2022.
//

import Foundation

extension BMWCenter: SpecialOfferProtocol {
    
    func addEmergencyPac() {
        accessories.append(Accessories.firstAidKit)
        accessories.append(Accessories.fireExtinguisher)
        print("В доп. оборудование добавлены: \(Accessories.fireExtinguisher.rawValue) и  \(Accessories.firstAidKit.rawValue)")
    }
    func makeSpecialOffer() {
        
        var currentDate = DateComponents()
        currentDate.year = 2022
        
        for car in cars {
            if car.buildDate.year == currentDate.year {
                print("Цена автомобиля \(car.model) \(car.buildDate.year) года остается прежней \(car.price)")
                print("____________________")
                
            } else if car.buildDate.year != currentDate.year {
                var discont: Int
                var finishPrice: Int
                
                discont = (car.price * 15) / 100
                
                finishPrice = car.price - discont
                
                print("На автомобиль \(car.model) \(car.buildDate.year) выпуска сделана скидка \(discont). Теперь он стоит \(finishPrice) рублей")
                
                addToShowroom(car)
                addEmergencyPac()
            }
        }
    }
}
