//
//  TermsAndCondiotionVc.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 08/07/2024.
//

import Foundation
import UIKit

class TermsAndConditionVc: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Terms And Condition"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        
        view.backgroundColor = .green
    }
}
