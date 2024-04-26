//
//  WeatherProvider.swift
//  WeatherApp
//
//  Created by Cesar Silva on 25/04/24.
//

import Foundation
import Network

protocol WeatherProviderProtocol {
    func getCurrentWeather(query: String, completionHandler: @escaping(Result<CurrentWeatherData, NetworkError>) -> Void)
}

class WeatherProvider: WeatherProviderProtocol {
    
    private var baseURL = String()
    let networkService = NetworkServiceManager.shared
    
    init(baseURL: String? = nil) {
        if let baseURL {
            self.baseURL = baseURL
        } else {
            self.baseURL = APIConstants.baseURL
        }
    }
    
    func getCurrentWeather(query: String, completionHandler: @escaping(Result<CurrentWeatherData, NetworkError>) -> Void) {
        
        let urlString = baseURL + APIConstants.current
        let queryString = APIConstants.query + query
        let endpoint = Endpoint(url: "\(urlString)?\(queryString)&\(APIConstants.key)")
        
        networkService.request(with: endpoint, decodeType: CurrentWeatherData.self) { result in
            switch result {
            case .success(let success):
                completionHandler(.success(success))
            case .failure(let failure):
                completionHandler(.failure(failure))
            }
        }
    }
}
