//
//  Exposition.swift
//  Expo1900
//
//  Created by Jeremy, 준호 on 2022/10/18.
//

struct Exposition: Decodable, Decoder {
    let title: String
    let visitors: Int
    let location: String
    let duration: String
    let description: String
}
