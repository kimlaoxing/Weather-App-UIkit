//
//  NetworkManager.swift
//  Weather
//
//  Created by Macbook Pro  on 27/10/21.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchWeather(lat: Double?, lon: Double?, completion: @escaping (WeatherResponse?) -> ()) {
        let stringURL = "https://api.openweathermap.org/data/2.5/onecall?lat=\(lat ?? 0)&lon=\(lon ?? 0)&appid=c9e76ac196843eb24d32dd1838a7867d&units=metric"
        
        guard let url = URL(string: stringURL) else { completion(nil); return }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error { print(error); return }
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let weatherResponse = try decoder.decode(WeatherResponse.self , from: data)
                DispatchQueue.main.async {
                    completion(weatherResponse)
                }
            } catch let error {
                DispatchQueue.main.async {
                    completion(nil)
                }
                print(error.localizedDescription)
            }
        }.resume()
    }
}
