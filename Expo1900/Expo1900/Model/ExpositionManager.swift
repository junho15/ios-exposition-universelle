//
//  ExpositionManager.swift
//  Expo1900
//
//  Created by Jeremy, 준호 on 2022/10/24.
//

import UIKit.NSDataAsset

struct ExpositionManager: Decoder {
    private let assetName: String = "exposition_universelle_1900"
    private let imageName: String = "poster"
    var exposition: Exposition?
    
    init() {
        exposition = configureFromJson(assetName: assetName, type: exposition)
    }
    
    var posterImage: UIImage? {
        return UIImage(named: imageName)
    }
    
    var formattedVisitorsDescription: String? {
        let numberFormatter: NumberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        guard let visitors = self.exposition?.visitors,
              let visitorsDescription = numberFormatter.string(from: NSNumber(value: visitors)) else { return nil }
        return visitorsDescription + " 명"
    }
}

protocol Decoder {
    
}

extension Decoder {
    func configureFromJson<T: Decodable>(assetName: String, type: T?) -> T? {
        guard let dataAsset: NSDataAsset = NSDataAsset(name: assetName) else { return nil }
        let jsonDecoder: JSONDecoder = JSONDecoder ()
        guard let data =  try? jsonDecoder.decode(T?.self, from: dataAsset.data) else { return nil }
        return data
    }
}
