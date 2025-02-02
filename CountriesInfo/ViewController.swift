//
//  ViewController.swift
//  CountriesInfo
//
//  Created by Kristina Kostenko on 14.10.2024.
//

import UIKit

class ViewController: UITableViewController {

    var countries = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        readJSONFile("countries")
        print(countries.count)
        
    }

    func readJSONFile(_ filename: String) {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            fatalError("Could not find countries.json")
        }
        guard let dataCountries = try? Data(contentsOf: url) else {
            fatalError("Could not convert data")
        }
        
        let decoder = JSONDecoder()
        if let jsonCountries = try? decoder.decode(Countries.self, from: dataCountries) {
            countries = jsonCountries.countries
            
            for country in countries {
                print(country.name)
            }
        }

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    // appearance of each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // make cells reusable
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
        
        let country = countries[indexPath.row]
        cell.textLabel?.text = country.name
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let vc = DetailViewController()
           
            vc.name = countries[indexPath.row].name
            vc.capital = countries[indexPath.row].capital
            vc.area = countries[indexPath.row].area
            vc.population = countries[indexPath.row].population
            vc.currency = countries[indexPath.row].currency
            vc.flagImage = UIImage(named: countries[indexPath.row].flagImage)
            navigationController?.pushViewController(vc, animated: true)
        
    }

}

