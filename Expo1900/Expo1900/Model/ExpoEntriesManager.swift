//
//  ExpoEntriesManager.swift
//  Expo1900
//
//  Created by Jeremy, 준호 on 2022/10/24.
//

import UIKit.NSDataAsset

struct ExpoEntriesManager: Decoder {
    private(set) var expoEntries: [ExpoEntry]?
    private let assetName: String = "items"
    
    init() {
        expoEntries = configureFromJson(assetName: assetName, type: expoEntries)
    }
    
    var entriesCount: Int {
        guard let itemCount = self.expoEntries?.count else { return 0 }
        return itemCount
    }
    
    func expoEntryImage(index: Int) -> UIImage? {
        guard let imageName = expoEntries?[index].imageName else { return nil }
        return UIImage(named: imageName)
    }
}
