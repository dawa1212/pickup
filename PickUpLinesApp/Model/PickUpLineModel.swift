//
//  PickUpLineModel.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 23/06/2024.
//

import UIKit

struct PickUpLineModel {
    let title: String
    let imageName: String
    let color: UIColor

    static func getAllModels() -> [PickUpLineModel] {
        return [
            PickUpLineModel(title: "Bad", imageName: "bad", color: UIColor(red: 30 / 255, green: 94 / 255, blue: 148 / 255, alpha: 1)),
            PickUpLineModel(title: "Cheesy", imageName: "cheesy", color: UIColor(red: 17 / 255, green: 214 / 255, blue: 234 / 255, alpha: 1)),
            PickUpLineModel(title: "Clever", imageName: "clever", color: UIColor(red: 143 / 255, green: 85 / 255, blue: 246 / 255, alpha: 1)),
            PickUpLineModel(title: "Cute", imageName: "cute", color: UIColor(red: 215 / 255, green: 9 / 255, blue: 119 / 255, alpha: 1)),
            PickUpLineModel(title: "Dirty", imageName: "dirty", color: UIColor(red: 122 / 255, green: 203 / 255, blue: 160 / 255, alpha: 1)),
            PickUpLineModel(title: "Food", imageName: "food", color: UIColor(red: 19 / 255, green: 139 / 255, blue: 177 / 255, alpha: 1)),
            PickUpLineModel(title: "Funny", imageName: "funny", color: UIColor(red: 214 / 255, green: 89 / 255, blue: 108 / 255, alpha: 1)),
            PickUpLineModel(title: "Hookup", imageName: "hookUp", color: UIColor(red: 241 / 255, green: 125 / 255, blue: 188 / 255, alpha: 1)),
            PickUpLineModel(title: "Nerd", imageName: "nerd", color: UIColor(red: 240 / 255, green: 113 / 255, blue: 70 / 255, alpha: 1)),
            PickUpLineModel(title: "Romantic", imageName: "romantic", color: UIColor(red: 125 / 255, green: 170 / 255, blue: 28 / 255, alpha: 1))
        ]
    }
}
