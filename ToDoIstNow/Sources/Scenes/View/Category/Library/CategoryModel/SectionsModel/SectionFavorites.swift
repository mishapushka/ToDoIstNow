//
//  SectionFavorites.swift
//  ToDoIstNow
//
//  Created by mac on 05.07.2021.
//

import Foundation

struct SectionFavorites: Identifiable {
    var id = UUID()
    var name: String
}

extension SectionFavorites {
    static var items = [
        SectionFavorites(name: "Ideas"),
        SectionFavorites(name: "Training / Development")
    ]
}
