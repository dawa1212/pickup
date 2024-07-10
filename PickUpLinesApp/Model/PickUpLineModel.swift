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
