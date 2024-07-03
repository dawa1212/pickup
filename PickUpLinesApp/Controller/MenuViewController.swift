//
//  MenuViewController.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 01/07/2024.
//

import Foundation
import UIKit

open class MenuViewController: UIViewController {
    
    private lazy var menuTitles = ["Home", "About us", "Privacy and policy", "Help us"]
    
    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.delegate = self
        view.dataSource = self
        view.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return view
    }()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.fillSuperview()
    }
}


extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return menuTitles.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuTitles[indexPath.row]
        return cell
    }
    
}
