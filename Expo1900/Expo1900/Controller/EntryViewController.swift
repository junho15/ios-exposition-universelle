//
//  EntryViewController.swift
//  Expo1900
//
//  Created by junho lee on 2022/10/20.
//

import UIKit

final class EntryViewController: UIViewController {
    
    @IBOutlet private weak var descriptionTextView: UITextView!
    @IBOutlet private weak var imageView: UIImageView!
    
    private var expoEntry: ExpoEntry?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        configureEntryViews(expoEntry: expoEntry)
    }
    
    private func configureEntryViews(expoEntry: ExpoEntry?) {
        guard let expoEntry = expoEntry else { return }
        navigationItem.title = expoEntry.name
        imageView.image = UIImage(named: expoEntry.imageName)
        descriptionTextView.text = expoEntry.description
    }
    
    func sendExpoEntry(_ data: ExpoEntry) {
        expoEntry = data
    }
}
