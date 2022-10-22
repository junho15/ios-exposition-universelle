//
//  String + attributed.swift
//  Expo1900
//
//  Created by 유제민 on 2022/10/22.
//
import Foundation.NSAttributedString
import UIKit.UIFont

extension String {

    func addAttributed(prefix: String) -> NSMutableAttributedString {
        let prefixedText: NSMutableAttributedString = NSMutableAttributedString(string: prefix + self)
        prefixedText.setAttributes([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 22)], range: NSMakeRange(0, prefix.count))
        return prefixedText
    }
}
