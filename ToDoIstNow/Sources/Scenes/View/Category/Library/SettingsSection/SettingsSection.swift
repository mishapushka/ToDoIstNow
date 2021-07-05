//
//  SettingsSection.swift
//  ToDoIstNow
//
//  Created by mac on 05.07.2021.
//

import SwiftUI

struct SettingsSection: View {

    var title: String

    var body: some View {
        HStack {

            Text(title)
                .font(.headline)

            Spacer()

            Button(action: {}, label: {
                Image(systemName: "chevron.left")
                    .font(.headline)
                    .foregroundColor(.gray)
            })
            .padding(.trailing,15)

            Button(action: {}, label: {
                Image(systemName: "plus")
                    .font(.headline)
                    .foregroundColor(.gray)
            })
        }
    }
}

struct SettingsCell_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSection(title: "title")
    }
}
