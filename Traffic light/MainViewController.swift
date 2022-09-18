//
//  ViewController.swift
//  Traffic light
//
//  Created by Святослав on 18.09.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var changerLightButton: UIButton!
    @IBOutlet var ligthViews: [UIView]!
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLights()
        setupChangerLightButton()
    }
    private func setupLights() {
        for light in ligthViews {
            light.alpha = 0.3
            light.layer.cornerRadius = 70
        }
    }
    private func setupChangerLightButton() {
        changerLightButton.backgroundColor = #colorLiteral(red: 1, green: 0.8422161937, blue: 0.4290211201, alpha: 1)
        changerLightButton.layer.cornerRadius = 10
        changerLightButton.tintColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        changerLightButton.setTitle("Change light?", for: .normal)
    }
    
    @IBAction func changerLightsDidTappeed() {
        setupLights()
        ligthViews[counter].alpha = 1
        changerLightButton.setTitle("Next", for: .normal)
        counter = counter >= ligthViews.count - 1 ? 0 : counter + 1
    }
}

