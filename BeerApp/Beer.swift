//
//  Beer.swift
//  BeerApp
//
//  Created by murad on 27.10.2022.
//

import Foundation

class Beer {
    var name: String
    var cost: Double
    var quantity = 100
    var selected = 0
    
    init(name: String, cost: Double) {
        self.name = name
        self.cost = cost
    }
}
