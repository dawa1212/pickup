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
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy private(set) var imageIconForSection: UIImageView = {
        let image = UIImageView()
        image.withWidth(40)
        image.withHeight(40)
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
        contentView.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        ])
        
        [title, imageIconForSection].forEach(containerView.addSubview(_:))
        
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            title.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
            title.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            
            imageIconForSection.topAnchor.constraint(equalTo: title.topAnchor),
            imageIconForSection.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageIconForSection.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
        ])
    }
}
