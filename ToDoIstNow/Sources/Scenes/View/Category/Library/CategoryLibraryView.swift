//
//  CategoryLibraryView.swift
//  ToDoIstNow
//
//  Created by mac on 30.06.2021.
//

import SwiftUI

struct CategoryLibraryView: View {
    
    var categories = CategoryModel.items
    var firstSections = SectionFavorites.items
    var secondSections = SectionProjects.items
    var thirdSections = SectionLabels.items
    var fourthSections = SectionFilters.items

    @State private var multiSelection = Set<UUID>()
    @State private var showDetails = false

    var body: some View {
        List(selection: $multiSelection) {
            ForEach(categories) {category in
                HStack {
                    Image(systemName: category.icon)
                        .foregroundColor(.blue)
                    Text(category.name)
                }
                .font(.system(size: 20))
            }
            Section(header: SettingsSection(title: "Favorites")) {
                ForEach(firstSections) {items in
                    Text(items.name)
                }
            }
            Section(header: SettingsSection(title: "Projects")) {
                ForEach(secondSections) {items in
                    Text(items.name)
                }
            }
            Section(header: SettingsSection(title: "Labels")) {
                ForEach(thirdSections) {items in
                    Text(items.name)
                }
            }
            Section(header: SettingsSection(title: "Filters")) {
                ForEach(fourthSections) {items in
                    Text(items.name)
                }
            }
        }
        .listStyle(InsetListStyle())
    }
}

struct CategoryLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryLibraryView()
    }
}
