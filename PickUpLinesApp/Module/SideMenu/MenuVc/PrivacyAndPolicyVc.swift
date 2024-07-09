//
//  PrivacyAndPolicyVc.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 08/07/2024.
//

import Foundation
import UIKit

class PrivacyAndPolicyVc: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Privacy And Policy"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        
        view.backgroundColor = .orange
    }
}
