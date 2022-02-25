//
//  Feature.swift
//  AppStore
//
//  Created by 권성은 on 2021/11/23.
//

import Foundation

struct Feature: Decodable {
    let type: String
    let appName: String
    let description: String
    let imageURL: String
}
