//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Cesar Silva on 25/04/24.
//

import Foundation

struct CurrentWeather: Codable {
    
    let temperature: Double
    let condition: WeatherCondition
    let windSpeed: Double
    let windDirection: String
    let preciptation: Int
    let humidity: Int
    
    enum CodingKeys: String, CodingKey {
        case temperature = "temp_c"
        case condition = "condition"
        case windSpeed = "wind_mph"
        case windDirection = "wind_dir"
        case preciptation = "precip_mm"
        case humidity = "humidity"
    }
    
    init() {
        self.temperature = Double()
        self.condition = WeatherCondition()
        self.windSpeed = Double()
        self.windDirection = String()
        self.preciptation = Int()
        self.humidity = Int()
    }
    
    init(temperature: Double, 
         condition: WeatherCondition,
         windSpeed: Double,
         windDirection: String,
         preciptation: Int,
         humidity: Int) {
        self.temperature = temperature
        self.condition = condition
        self.windSpeed = windSpeed
        self.windDirection = windDirection
        self.preciptation = preciptation
        self.humidity = humidity
    }
    
}

