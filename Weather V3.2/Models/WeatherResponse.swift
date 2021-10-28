//
//  WeatherResponse.swift
//  Weather
//
//  Created by Macbook Pro  on 27/10/21.
//

import Foundation

struct WeatherResponse: Decodable {
    let current: Current
}

struct Current: Decodable {
    let weather: [Weather]
    let temp, windSpeed: Double
}
struct Weather: Decodable {
    let icon: String
}
