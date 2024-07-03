//
//  ViewController.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 28/02/2024.
//

import UIKit
import LBTATools
import SideMenu

class PickUpLineVc: UIViewController {

    private var pickUpModel: [PickUpLineModel] = []

    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.delegate = self
        view.dataSource = self
        view.register(PickUpLineCell.self, forCellReuseIdentifier: "cell")
        view.separatorStyle = .none
        return view
    }()

    private var sideMenu: SideMenuNavigationController?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        title = "Pickup Lines"
        navigationController?.navigationBar.prefersLargeTitles = true

        pickUpModel = PickUpLineModel.getAllModels()
        view.addSubview(tableView)
        tableView.fillSuperview()

        setupSideMenu()
    }

    private func setupSideMenu() {
        let menuVc = MenuViewController()
        sideMenu = SideMenuNavigationController(rootViewController: menuVc)
        sideMenu?.leftSide = false

        SideMenuManager.default.rightMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.view, forMenu: .right)

        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "hamburger"),
            style: .plain,
            target: self,
            action: #selector(didTapMenuBttn)
        )
    }

    @objc private func didTapMenuBttn() {
        if let sideMenu = sideMenu {
            present(sideMenu, animated: true, completion: nil)
        }
    }
}

extension PickUpLineVc: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pickUpModel.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PickUpLineCell

        let model = pickUpModel[indexPath.row]
        cell.title.text = model.title
        cell.containerView.backgroundColor = model.color
        cell.imageIcon.image = UIImage(named: model.imageName)
        return cell
    }
}

extension PickUpLineVc: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("row clicked")
    }
}

extension PickUpLineVc: SideMenuNavigationControllerDelegate {
    func sideMenuWillAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Appearing!")
    }

    func sideMenuDidAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Appeared!")
    }

    func sideMenuWillDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappearing!")
    }

    func sideMenuDidDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("SideMenu Disappeared!")
    }
}
