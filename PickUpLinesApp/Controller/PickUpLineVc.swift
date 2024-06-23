//
//  ViewController.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 28/02/2024.
//

import UIKit
import LBTATools

class PickUpLineVc: UIViewController {

    private lazy var sectionTitles = ["Bad", "Cheesy", "Clever", "Cute", "Dirty", "Food", "Funny", "Hookup", "Nerd", "Romantic"]
    private lazy var sectionImages = ["bad", "cheesy", "clever", "cute", "dirty", "food", "funny", "hookUp", "nerd", "romantic"]
    private lazy var sectionColors: [UIColor] = [.red, .blue, .green, .yellow, .brown, .orange, .gray, .purple, .cyan, .magenta]

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
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true

        view.addSubview(tableView)
        tableView.fillSuperview()
    }
}

extension PickUpLineVc: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionImages.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PickUpLineCell

        cell.title.text = sectionTitles[indexPath.row]

        //Set background color for each section
//        cell.backgroundColor = sectionColors[indexPath.row]

        //for images to configure
        let imageName = sectionImages[indexPath.row]
        cell.imageIconForSection.image = UIImage(named: imageName)

        return cell
    }

}

extension PickUpLineVc: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }

}
