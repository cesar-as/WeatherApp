//
//  Location.swift
//  WeatherApp
//
//  Created by Cesar Silva on 25/04/24.
//

import Foundation

struct Location: Codable {
    let name: String
    let region: String
    let country: String
    
    init() {
        self.name = String()
        self.region = String()
        self.country = String()
    }
    
    init(name: String, region: String, country: String) {
        self.name = name
        self.region = region
        self.country = country
    }
}
