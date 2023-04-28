//
//  HeroData.swift
//  Heroes-App-with-SwiftUI
//
//  Created by muhammad.alfarisi on 28/04/23.
//

import Foundation

struct HeroData: Codable, Identifiable {
    let id: Int
    let name: String
    let deskripsi: String
    let imageAsset: String
    let urlWiki: String
}
