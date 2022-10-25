//
//  ExpositionManager.swift
//  Expo1900
//
//  Created by Jeremy, 준호 on 2022/10/24.
//

import UIKit.NSDataAsset

struct ExpositionManager: Manager {
    private let assetName: String = "exposition_universelle_1900"
    var image: UIImage?
    var exposition: Exposition?
//    var myString: String?
    
    init() {
        self.image = makeImage(name: "poster")
        self.exposition = configureFromJson(assetName: assetName, type: exposition)
//        self.myString = formattedString()
    }

    var formattedVisitorsDescription: String? {
        let numberFormatter: NumberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        guard let visitors = self.exposition?.visitors,
              let visitorsDescription = numberFormatter.string(from: NSNumber(value: visitors)) else { return nil }
        return visitorsDescription + " 명"
    }
    
//    func formattedString() -> String? {
//        let numberFormatter: NumberFormatter = NumberFormatter()
//        numberFormatter.numberStyle = .decimal
//        guard let visitors = self.exposition?.visitors,
//              let visitorsDescription = numberFormatter.string(from: NSNumber(value: visitors)) else { return nil }
//        return visitorsDescription + " 명"
//    }
}
