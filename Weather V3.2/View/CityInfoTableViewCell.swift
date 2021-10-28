//
//  CityInfoTableViewCell.swift
//  Weather V3.2
//
//  Created by Macbook Pro  on 28/10/21.
//

import UIKit

class CityInfoTableViewCell: UITableViewCell {
    
    @IBOutlet var cityNameLabel: UILabel!
    @IBOutlet var countryNameLabel: UILabel!
    var lat, lon: Double!
}
