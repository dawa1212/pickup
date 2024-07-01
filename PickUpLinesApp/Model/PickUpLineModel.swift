//
//  PickUpLineModel.swift
//  PickUpLinesApp
//
//  Created by Dawa Pakhrin on 23/06/2024.
//

import UIKit

struct PickUpLineModel: Decodable {
    let title: String
    let imageName: String
    let color: UIColor

    enum CodingKeys: String, CodingKey {
        case title, imageName, color
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        title = try container.decode(String.self, forKey: .title)
        imageName = try container.decode(String.self, forKey: .imageName)
        let colorHex = try container.decode(String.self, forKey: .color)
        color = UIColor(hex: colorHex)
    }

    static func getAllModels() -> [PickUpLineModel] {
        guard let url = Bundle.main.url(forResource: "PickUpLines", withExtension: "json") else {
            fatalError("JSON file not found")
        }
        do {
            let data = try Data(contentsOf: url)
            let models = try JSONDecoder().decode([PickUpLineModel].self, from: data)
            return models
        } catch {
            fatalError("Failed to decode JSON: \(error)")
        }
    }
}

extension UIColor {
    convenience init(hex: String) {
        let hexString: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)

        if hexString.hasPrefix("#") {
            scanner.currentIndex = hexString.index(after: hexString.startIndex)
        }

        var color: UInt64 = 0
        scanner.scanHexInt64(&color)

        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask

        let red = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue = CGFloat(b) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}


