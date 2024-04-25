//
//  WeatherCondition.swift
//  WeatherApp
//
//  Created by Cesar Silva on 25/04/24.
//

import Foundation

struct WeatherCondition: Codable {
    
    let description: String
    let icon: String
    
    enum CodingKeys: String, CodingKey {
        case description = "text"
        case icon = "icon"
    }
    
    init() {
        self.description = String()
        self.icon = String()
    }
    
    init(description: String, icon: String) {
        self.description = description
        self.icon = icon
    }
}
