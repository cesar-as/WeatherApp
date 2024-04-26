//
//  HomeViewController.swift
//  WeatherApp
//
//  Created by Cesar Silva on 25/04/24.
//

import UIKit

class HomeViewController: UIViewController {

    let provider = WeatherProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        provider.getCurrentWeather(query: "guarulhos") { result in
            switch result {
            case .success(let success):
                print("Success with data: \(success)")
            case .failure(let failure):
                print("Failure: \(failure)")
            }
        }
    }

}

