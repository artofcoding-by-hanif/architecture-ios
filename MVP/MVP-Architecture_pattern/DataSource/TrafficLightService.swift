//
//  TrafficLight.swift
//  MVP-Architecture_pattern
//
//  Created by Hanif M on 14/12/20.
//

import Foundation

class TrafficLightService {
    func getTrafficLight(colorName: String, callBack:(TrafficLight?) -> Void) {
        let trafficLights = [TrafficLight(colorName: "Red", description: "Strop"),
                             TrafficLight(colorName: "Green", description: "Go"),
                             TrafficLight(colorName: "Yellow", description: "About to change Red")]

        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callBack(foundTrafficLight)
        } else {
            callBack(nil)
        }
    }
}
