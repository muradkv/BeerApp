//
//  Manager.swift
//  BeerApp
//
//  Created by murad on 27.10.2022.
//

import Foundation

enum SelectedQuantity {
    case add
    case substract
}

class Manager {
    static let shared = Manager()
    
    var arrayBeers = [
        Beer(name: "Guiness", cost: 3.4),
        Beer(name: "Baltika", cost: 2.7),
        Beer(name: "Cool", cost: 1.1)
    ]
    var totalSum = 0.0
    
    private init() {}
    
    func getBeer(name: String, addOrSubstract: SelectedQuantity) -> Beer {
        
        let beer = arrayBeers.filter({$0.name == name}).first
        
        if addOrSubstract == .add {
            if beer?.selected != beer?.quantity {
                beer?.selected += 1
            }
        } else if addOrSubstract == .substract {
            if beer?.selected != 0 {
                beer?.selected -= 1
            }
        }
        
        return beer!
    }
    
    func sellBeer() -> String {
        var selectedBeer = [Int]()
        
        for i in arrayBeers {
            totalSum += Double(i.selected) * i.cost
            i.quantity -= i.selected
            selectedBeer.append(i.selected)
            i.selected = 0
        }
        
        let totalSumText = String(format: "%.2f", totalSum)
        
        let text = "\(selectedBeer[0]) * 3.4$ - Guiness, \(selectedBeer[1]) * 2.7$ - Baltika, \(selectedBeer[2]) * 1.1$ - Cool. Total sum: \(totalSumText)$"
        
        return text
    }
    
    func endDay() -> String {
        let text = "Total sum today: \(totalSum)$"
        totalSum = 0.0 
        
        for i in arrayBeers {
            i.quantity = 100
        }
        
        return text
    }

}
