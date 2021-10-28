//
//  CitiesManager.swift
//  Weather
//
//  Created by Macbook Pro  on 27/10/21.
//

import Foundation

class CitiesListManager {
    
    static let shared = CitiesListManager() 
    
    private init() {}
    
    func fetchCitiesList() -> [City] {
        guard
            let url = Bundle.main.url(forResource: "Cities", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let cities = try? JSONDecoder().decode([City].self, from: data)
        else { return [] }
        return cities
    }
}
