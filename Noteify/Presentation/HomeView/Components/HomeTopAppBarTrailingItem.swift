//
//  HomeTopAppBar.swift
//  Noteify
//
//  Created by Tariyel Islami on 7.03.2023.
//

import SwiftUI

struct HomeTopAppBarTrailingItem: View {
    @State var isShow = false
    
    var body: some View {
        HStack(){
            Spacer()
            if isShow {
                HStack {
                    IconButton(action: {}, iconName: "folder")
                    IconButton(action: {}, iconName: "grid")
                    IconButton(action: {}, iconName: "list.bullet").padding(.trailing,4)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Primary"), lineWidth: 1)
                )
                .transition(.move(edge: isShow ? .trailing : .leading))
            }
            
            IconButton(
                action: { withAnimation{ isShow.toggle() } },
                iconName: isShow ? "rectangle.3.offgrid" : "rectangle.3.offgrid.fill"
            )
            
            IconButton(action: {}, iconName: "magnifyingglass")
            IconButton(action: {}, iconName: "ellipsis")
        }
    }
}

struct HomeTopAppBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopAppBarTrailingItem()
    }
}
