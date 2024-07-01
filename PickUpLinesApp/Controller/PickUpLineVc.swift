//
//  ViewController.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 28/02/2024.
//

import UIKit
import LBTATools

//class PickUpLineVc: UIViewController {
//    
//    var pickUpModel = PickUpLineModel.getAllModels()
//
//    private lazy var tableView: UITableView = {
//        let view = UITableView(frame: .zero, style: .plain)
//        view.delegate = self
//        view.dataSource = self
//        view.register(PickUpLineCell.self, forCellReuseIdentifier: "cell")
//        view.separatorStyle = .none
//        return view
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//
//        title = "Pickup Lines"
//        navigationController?.navigationBar.prefersLargeTitles = true
//
//        view.addSubview(tableView)
//        tableView.fillSuperview()
//    }
//}
//
//extension PickUpLineVc: UITableViewDataSource {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return pickUpModel.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PickUpLineCell
//        
//        let models = pickUpModel[indexPath.row]
//        cell.title.text = models.title
//        cell.containerView.backgroundColor = models.color
//        cell.imageIcon.image = UIImage(named: models.imageName)
//        return cell
//    }
//}
//
//extension PickUpLineVc: UITableViewDelegate {
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        print("row clicked")
//    }
//
//}

class PickUpLineVc: UIViewController {
    
    var pickUpModel: [PickUpLineModel] = []

    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.delegate = self
        view.dataSource = self
        view.register(PickUpLineCell.self, forCellReuseIdentifier: "cell")
        view.separatorStyle = .none
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        title = "Pickup Lines"
        navigationController?.navigationBar.prefersLargeTitles = true

        pickUpModel = PickUpLineModel.getAllModels()
        view.addSubview(tableView)
        tableView.fillSuperview()
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
