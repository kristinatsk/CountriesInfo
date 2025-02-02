//
//  DetailViewController.swift
//  CountriesInfo
//
//  Created by Kristina Kostenko on 14.10.2024.
//

import UIKit

class DetailViewController: UIViewController {

    

    var nameLabel: UILabel!
    var capitalLabel: UILabel!
    var areaLabel: UILabel!
    var populationLabel: UILabel!
    var currencyLabel: UILabel!
    var flagImageView: UIImageView!

    var name = ""
    var capital = ""
    var area = ""
    var population = ""
    var currency = ""
    var flagImage: UIImage?
    
    override func loadView() {
        
        view = UIView()
        view.backgroundColor = .white

        
        flagImageView = UIImageView()
        flagImageView.translatesAutoresizingMaskIntoConstraints = false
        flagImageView.image = flagImage
        view.addSubview(flagImageView)
        
        nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = .center
        nameLabel.text = name
        view.addSubview(nameLabel)
        
        capitalLabel = UILabel()
        capitalLabel.translatesAutoresizingMaskIntoConstraints = false
        capitalLabel.textAlignment = .center
        capitalLabel.text = "Capital: \(capital)"
        view.addSubview(capitalLabel)
        
        areaLabel = UILabel()
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.textAlignment = .center
        areaLabel.text = "Area: \(area)"
        view.addSubview(areaLabel)
        
        populationLabel = UILabel()
        populationLabel.translatesAutoresizingMaskIntoConstraints = false
        populationLabel.textAlignment = .center
        populationLabel.text = "Population: \(population)"
        view.addSubview(populationLabel)
        
        currencyLabel = UILabel()
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        currencyLabel.textAlignment = .center
        currencyLabel.text = "Currency: \(currency)"
        view.addSubview(currencyLabel)
        
        
        NSLayoutConstraint.activate([
            
            flagImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30),
            flagImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: flagImageView.bottomAnchor, constant: 30),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            capitalLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30),
            capitalLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            areaLabel.topAnchor.constraint(equalTo: capitalLabel.bottomAnchor, constant: 30),
            areaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            populationLabel.topAnchor.constraint(equalTo: areaLabel.bottomAnchor, constant: 30),
            populationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            currencyLabel.topAnchor.constraint(equalTo: populationLabel.bottomAnchor, constant: 30),
            currencyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
