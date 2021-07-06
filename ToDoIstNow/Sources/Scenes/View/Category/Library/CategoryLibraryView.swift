//
//  CategoryLibraryView.swift
//  ToDoIstNow
//
//  Created by mac on 30.06.2021.
//

import SwiftUI

struct CategoryLibraryView: View {
    
    var categories = CategoryModel.items
    var sections = SectionHeader.items
    @State private var multiSelection = Set<UUID>()

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
            Section(header: Text("Favorites").padding([.top, .bottom])) {
                ForEach(sections) {items in
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
