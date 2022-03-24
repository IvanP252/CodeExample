//
//  Protocol.swift
//  Dealerships
//
//  Created by admin on 24.03.2022.
//

import Foundation


// MARK: CarProtocol

protocol CarProtocol {
    var model: String { get }
    var color: String { get }
    var buildDate: (data: Int, month: Int, year: Int) { get }
    var price: Int { get set }
    var accessories: [Accessories] { get set }
    var isServiced: Bool { get set }
}

// MARK: DealershipProtocol

protocol DealershipProtocol {
    var name: String { get }
    var showroomCapacity: Int { get }
    var stockCars: [Car] { get set }
    var showroomCars: [Car] { get set }
    var cars: [Car] { get }
    
    func offerAccesories(_ accessories: [Accessories])
    
    func presaleService(_ car: Car)
    
    func addToShowroom(_ car: Car)
    
    func sellCar(_ car: Car)
    
    func orderCar()
}

// MARK: SpecialOfferProtocol

protocol SpecialOfferProtocol {
    func addEmergencyPac()
    func makeSpecialOffer()
}
