//
//  ImageMaker.swift
//  Expo1900
//
//  Created by 유제민 on 2022/10/25.
//

import UIKit

protocol ImageMaker { }

extension ImageMaker {
    
    func makeImage(name: String) -> UIImage? {
        return UIImage(named: name)
    }
}
