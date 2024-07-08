//
//  SettingVc.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 08/07/2024.
//

import Foundation
import UIKit

class SettingVc: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Setting"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        
        view.backgroundColor = .gray
    }
}
