//
//  Expo1900 - ExpositionViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

final class ExpositionViewController: UIViewController {
    
    @IBOutlet private weak var titleLabel: UILabel! {
        didSet {
            titleLabel.text = self.exposition?.title
        }
    }
    
    @IBOutlet private weak var posterImage: UIImageView! {
        didSet {
            posterImage.image = UIImage(named: "poster")
            posterImage.layer.cornerRadius = 25
        }
    }
    
    @IBOutlet private weak var visitorsLabel: UILabel! {
        didSet {
            visitorsLabel.attributedText = self.exposition?.visitorsDescription.addAttributed(prefix: "방문객 : ")
        }
    }
    
    @IBOutlet private weak var locationLabel: UILabel! {
        didSet {
            locationLabel.attributedText = self.exposition?.location.addAttributed(prefix: "개최지 : ")
        }
    }
    
    @IBOutlet private weak var durationLabel: UILabel! {
        didSet {
            durationLabel.attributedText = self.exposition?.duration.addAttributed(prefix: "개최 기간 : ")
        }
    }
    
    @IBOutlet private weak var descriptionTextView: UITextView! {
        didSet {
            descriptionTextView.text = self.exposition?.description
        }
    }
    
    private var exposition: Exposition?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureExpositionFromJSON(name: "exposition_universelle_1900")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    private func configureExpositionFromJSON(name: String) {
        guard let exposition = JSONDecoder().decode(from: name, to: exposition) else { return }
        self.exposition = exposition
    }
    
}

