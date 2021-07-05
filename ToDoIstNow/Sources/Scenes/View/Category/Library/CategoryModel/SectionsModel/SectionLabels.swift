//
//  SectionLabels.swift
//  ToDoIstNow
//
//  Created by mac on 05.07.2021.
//

import Foundation

struct SectionLabels: Identifiable {
    var id = UUID()
    var name: String
}

extension SectionLabels {
    static var items = [
        SectionLabels(name: "")
    ]
}
