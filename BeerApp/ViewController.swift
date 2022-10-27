//
//  ViewController.swift
//  BeerApp
//
//  Created by murad on 26.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var guinessAmount: UILabel!
    @IBOutlet var baltikaAmount: UILabel!
    @IBOutlet var coolAmount: UILabel!
    @IBOutlet var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func beer1AddPressed(_ sender: UIButton) {
        let beer = Manager.shared.getBeer(name: "Guiness", addOrSubstract: .add)
        guinessAmount.text = String(beer.selected)
    }
    
    @IBAction func beer1SubstractPressed(_ sender: UIButton) {
        let beer = Manager.shared.getBeer(name: "Guiness", addOrSubstract: .substract)
        guinessAmount.text = String(beer.selected)
    }
    
    @IBAction func beer2AddPressed(_ sender: UIButton) {
        let beer = Manager.shared.getBeer(name: "Baltika", addOrSubstract: .add)
        baltikaAmount.text = String(beer.selected)
    }
    
    @IBAction func beer2SubstractPressed(_ sender: UIButton) {
        let beer = Manager.shared.getBeer(name: "Baltika", addOrSubstract: .substract)
        baltikaAmount.text = String(beer.selected)
    }
    
    @IBAction func beer3AddPressed(_ sender: UIButton) {
        let beer = Manager.shared.getBeer(name: "Cool", addOrSubstract: .add)
        coolAmount.text = String(beer.selected)
    }
    
    @IBAction func beer3SubstractPressed(_ sender: UIButton) {
        let beer = Manager.shared.getBeer(name: "Cool", addOrSubstract: .substract)
        coolAmount.text = String(beer.selected)
    }
    
    @IBAction func sellButtonPressed(_ sender: UIButton) {
        totalLabel.text = Manager.shared.sellBeer()
        resetSelectedBeerLabel()
    }
    
    @IBAction func endDayButtonPressed(_ sender: UIButton) {
        totalLabel.text = Manager.shared.endDay()
        resetSelectedBeerLabel()
    }
    
    func resetSelectedBeerLabel() {
        guinessAmount.text = "0"
        baltikaAmount.text = "0"
        coolAmount.text = "0"
    }

}

