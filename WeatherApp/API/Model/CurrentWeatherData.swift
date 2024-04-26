//
//  CurrentWeatherData.swift
//  WeatherApp
//
//  Created by Cesar Silva on 26/04/24.
//

import Foundation

struct CurrentWeatherData: Codable {
    let current: CurrentWeather
    let location: Location
}
