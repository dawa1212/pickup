//
//  CustomCell.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 28/02/2024.
//

import UIKit

class PickUpLineCell: UITableViewCell {
    
    lazy private(set) var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.backgroundColor = .systemOrange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy private(set) var title: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 28)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy private(set) var imageIcon: UIImageView = {
        let image = UIImageView()
        image.withWidth(80)
        image.withHeight(80)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func prepareLayout() {
        selectionStyle = .none
        contentView.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        ])
        
        [title, imageIcon].forEach(containerView.addSubview(_:))
        
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            title.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            
            imageIcon.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            imageIcon.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            imageIcon.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -5)
        ])
    }
}
