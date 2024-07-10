//
//  shareApp.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 08/07/2024.
//

import Foundation
import UIKit

class ShareApp: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Share our App"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        
        view.backgroundColor = .systemMint
    }
}
