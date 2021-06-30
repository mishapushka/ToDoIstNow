//
//  CategoryView.swift
//  ToDoIstNow
//
//  Created by mac on 30.06.2021.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {

            CategoryTopBarView()
        })
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
