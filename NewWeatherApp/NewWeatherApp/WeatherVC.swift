//
//  WeatherVC.swift
//  WeatherApp
//
//  Created by MK on 16/03/2017.
//  Copyright © 2017 Muhammad Khan. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var dateLable: UILabel!
    @IBOutlet weak var currentTempLable: UILabel!
    @IBOutlet weak var locationLable: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherTypeLable: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather = CurrentWeather()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
        
        currentWeather.downloadWeatherDetails {
            self.updateMainUI()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        return cell
    }
    
    func updateMainUI() {
        dateLable.text = currentWeather.date
        currentTempLable.text = "\(currentWeather.currentTemp)"
        currentWeatherTypeLable.text = currentWeather.weatherType
        locationLable.text = currentWeather.cityName
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
    }
}

