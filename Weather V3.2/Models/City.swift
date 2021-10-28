//
//  City.swift
//  Weather
//
//  Created by Macbook Pro  on 27/10/21.
//

import Foundation

struct City: Decodable {
    let coord: Coordinate
    let country, name: String
}

struct Coordinate: Decodable {
    let lat, lon: Double
}
