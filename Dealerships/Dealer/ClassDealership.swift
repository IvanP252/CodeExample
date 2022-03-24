//
//  Dealership.swift
//  Dealerships
//
//  Created by admin on 24.03.2022.
//

import Foundation

class Dealerships: DealershipProtocol {
    
    var name: String
    var showroomCapacity: Int
    var stockCars: [Car]
    var showroomCars: [Car]
    var cars: [Car] { stockCars + showroomCars }
    
    var slogan: [SloganDealerships]
    
    init(name: String, showroomCapacity: Int, stockCars: [Car], showroomCars: [Car], slogan: [SloganDealerships]) {
        self.name = name
        self.showroomCapacity = showroomCapacity
        self.stockCars = stockCars
        self.showroomCars = showroomCars
        self.slogan = slogan
    }
    
    func addCarsToStock(_ car: Car) {
        stockCars.append(car)
        print("На склад \(name) добавлено: \(car.model)")
    }
    
    func addCarsToShowroom(_ car: Car) {
        showroomCars.append(car)
        print("В автосалоне \(name) стоят: \(car.model)")
    }
    
    func offerAccesories(_ accessories: [Accessories]) {
        var currentAccessor: [Accessories] = []
        for accessory in accessories {
            switch accessory {
            case .tinting :
                print("Предалагаем приобрести \"\(Accessories.tinting.rawValue)\" ")
            case .alarmSystem:
                print("Предалагаем приобрести \"\(Accessories.alarmSystem.rawValue)\"")
            case .sportsDiscs:
                print("Предалагаем приобрести \"\(Accessories.sportsDiscs.rawValue)\"")
            default:
                break
            }
        }
        currentAccessor.append(Accessories.tinting)
        currentAccessor.append(Accessories.alarmSystem)
        currentAccessor.append(Accessories.sportsDiscs)
        print("Добавлены доп оборудования \(currentAccessor.count) шт : \n\(currentAccessor[0].rawValue) \n\(currentAccessor[1].rawValue) \n\(currentAccessor[2].rawValue)")
    }
    
    func presaleService(_ car: Car) {
        guard car.isServiced == false else {
            return
        }
        print("Автомобиль \(car.model) отправлен на предпродажную подготовку")
    }
    
    func addToShowroom(_ car: Car) {
        guard stockCars.contains(where: {$0.model == car.model}) else {
            return print("Авто \(car.model) не найдено на складе")
        }
        guard showroomCars.count < showroomCapacity else {
            return print("Места нет")
        }
        stockCars.removeAll(where: {$0.model == car.model})
        
        guard !showroomCars.contains(where: {$0.model == car.model}) else {
            return print("Подобный автомобиль уже есть в салоне")
        }
        showroomCars.append(car)
        print("Автомобиль \"\(car.model)\" переместили со склада. На складе осталось \(stockCars.count). Перемещенный автомобиль \(car.model) поступил в салон. Теперь в салоне \(showroomCars.count) автомобиля.")
        presaleService(car)
    }
    
    func sellCar(_ car: Car) {
        if showroomCars.contains(where: {$0.model == car.model}) {
            showroomCars.removeAll(where: {$0.model == car.model})
            presaleService(car)
            offerAccesories(accessories)
            print("Автомобиль \(car.model) продан. В автосалоне осталось \(showroomCars.count) шт.")
            return
        }
        
        if !showroomCars.contains(where: {$0.model == car.model}) && !stockCars.contains(where: {$0.model == car.model}) {
            print("Автомобиля \(car.model) нет в салоне или в дилерском центре \(name) вообще")
        }
    }
    
    func orderCar() {
        
        let randomNewCar = carsList.randomElement()!
        stockCars.append(randomNewCar)
        print("Автомобиль \(randomNewCar.model) \(randomNewCar.color) цвета стоимостью \(randomNewCar.price) добавлен на склад салона \(name). Теперь на складе \(stockCars.count) авто")
    }
    
    func sloganDealerships(_ slogan: [SloganDealerships]) {
        for slog in slogan {
            switch slog {
            case .bmvCenter :
                print("BMW - \"С удовольствием за рулем\"")
            case .lexusCenter:
                print("Lexus - \"Бесконечное стремление к совершенств\"")
            case .hyundaiCenter:
                print("Hyundai - \"Новое мышление. Новые возможности\"")
            case .mercedesCenter:
                print("Mercedes - \"Самое лучшее, или ничего\"")
            case.hondаCenter:
                print("Hondа - \"Управляй реальностью\"")
            }
        }
    }
}
