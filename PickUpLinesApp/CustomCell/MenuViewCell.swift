//
//  MenuViewCell.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 08/07/2024.
//

import Foundation
import UIKit

open class MenuViewCell: UITableViewCell {
    
    private lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 16)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        selectionStyle = .none
        addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    func configure(with title: MenuTitle) {
        titleLabel.text = title.rawValue
    }
}
