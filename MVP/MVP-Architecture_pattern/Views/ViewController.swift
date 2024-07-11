//
//  ViewController.swift
//  MVP-Architecture_pattern
//
//  Created by Hanif M on 14/12/20.
//

import UIKit

class ViewController: UIViewController, TrafficLightViewDelegate {

    @IBOutlet weak var descriptionLabel: UILabel!
    
    private var trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())

    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }

    @IBAction func redButtonAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Red")
    }

    @IBAction func yellowButtonAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Yellow")
    }
    @IBAction func greenButton(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Green")
    }

    func displayTrafficLight(description: String) {
        descriptionLabel.text = description
    }

}

