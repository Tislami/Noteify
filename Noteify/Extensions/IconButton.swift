//
//  IconButton.swift
//  Noteify
//
//  Created by Tariyel Islami on 7.03.2023.
//

import SwiftUI

struct IconButton: View {
    
    var action : () -> Void
    var iconName : String
    
    var body: some View {
        Button(
            action: action,
            label: { Image(systemName: iconName)
                .foregroundColor(.white)
            }
        )
    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        IconButton(action: {}, iconName: "ellipsis").background(.black)
    }
}
