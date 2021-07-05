//
//  CategoryTopBarView.swift
//  ToDoIstNow
//
//  Created by mac on 30.06.2021.
//

import SwiftUI

struct CategoryTopBarView: View {
    var body: some View {

        VStack {
            HStack(spacing: 15) {

                Button(action: {}, label: {
                    Image(systemName: "sun.max")
                        .font(.title)
                        .foregroundColor(.white)
                })
                Spacer(minLength: 0)

                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.white)
                })
                .padding(.trailing,15)

                Button(action: {}, label: {
                    Image(systemName: "bell")
                        .font(.title)
                        .foregroundColor(.white)
                })
                .padding(.trailing,15)

                Button(action: {}, label: {
                    Image(systemName: "gearshape")
                        .font(.title)
                        .foregroundColor(.white)
                })
            }
            .padding()
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color("TopBar"))

            Spacer(minLength: 0)
        }
        .background(Color.white.opacity(0.05).ignoresSafeArea(.all, edges: .all))
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct CategoryTopBarView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTopBarView()
    }
}
