//
//  SectionProjects.swift
//  ToDoIstNow
//
//  Created by mac on 05.07.2021.
//

import Foundation

struct SectionProjects: Identifiable {
    var id = UUID()
    var name: String
}

extension SectionProjects {
    static var items = [
        SectionProjects(name: "Personal"),
        SectionProjects(name: "Shopping"),
        SectionProjects(name: "Work"),
        SectionProjects(name: "movies to watch"),
        SectionProjects(name: "money")
    ]
}
