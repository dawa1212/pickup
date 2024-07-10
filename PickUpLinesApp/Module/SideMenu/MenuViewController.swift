//
//  MenuViewController.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 01/07/2024.
//

import Foundation
import UIKit

enum MenuTitle: String, CaseIterable {
    case setting = "Setting"
    case termsAndCondition = "Terms and Condition"
    case privacyAndPolicy = "Privacy and Policy"
    case shareApp = "Share App"
}

open class MenuViewController: UIViewController {

    private lazy var menuTitles = MenuTitle.allCases

    lazy private var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.dataSource = self
        view.delegate = self
        view.showsVerticalScrollIndicator = false
        view.separatorStyle = .none
        view.register(MenuViewCell.self, forCellReuseIdentifier: "cell")
        view.tableHeaderView = UIView()
        return view
    }()

    private lazy var customTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Menu"
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()

    lazy private var titleStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [customTitleLabel, UIView()])
        stack.axis = .horizontal
        stack.spacing = 160
        return stack
    }()

    open override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        view.backgroundColor = .white
        navigationItem.titleView = titleStackView
        view.addSubview(tableView)
        tableView.fillSuperview()
    }
}


extension MenuViewController: UITableViewDelegate, UITableViewDataSource {

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuTitles.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuViewCell
        let menuTitle = menuTitles[indexPath.row]
        cell.configure(with: menuTitle)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let menuTitles = menuTitles[indexPath.row]
        var viewController: UIViewController
        
        switch menuTitles {
            
        case .setting:
            print("Setting clicked")
            viewController = SettingVc()
            
        case .termsAndCondition:
            print("Terms and condition clicked")
            viewController = TermsAndConditionVc()
            
        case .privacyAndPolicy:
            print("Privacy and policy clicked")
            viewController = PrivacyAndPolicyVc()
            
        case .shareApp:
            print("Share app clicked")
            viewController = ShareApp()
        }
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}
