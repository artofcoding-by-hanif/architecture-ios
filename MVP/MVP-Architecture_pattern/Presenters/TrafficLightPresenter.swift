//
//  TrafficLightPresenter.swift
//  MVP-Architecture_pattern
//
//  Created by Hanif M on 14/12/20.
//

import Foundation

protocol TrafficLightViewDelegate: NSObjectProtocol {
    func displayTrafficLight(description: String)
}

class TrafficLightPresenter {
    private let trafficLightService: TrafficLightService
    weak private var trafficLightViewDelegate: TrafficLightViewDelegate?

    init(trafficLightService: TrafficLightService) {
        self.trafficLightService = trafficLightService
    }

    func setViewDelegate(trafficLightViewDelegate: TrafficLightViewDelegate?) {
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }

    func trafficLightColorSelected(colorName: String) {
        trafficLightService.getTrafficLight(colorName: colorName) { (trafficLight) in

            if let trafficlight = trafficLight {
                self.trafficLightViewDelegate?.displayTrafficLight(description: trafficlight.description)
            }
        }
    }
}
