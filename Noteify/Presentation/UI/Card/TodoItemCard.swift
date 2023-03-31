//
//  TodoItem.swift
//  Noteify
//
//  Created by Tariyel Islami on 7.03.2023.
//

import SwiftUI

struct TodoItemTextCard: View {
    
    @State var todoItem: TodoItem
    var clickable: Bool = true
    
    var body: some View {
        HStack{
            Button(action: {}){
                Image(systemName: todoItem.isComplete ? "checkmark.circle.fill" : "circle")
            }.foregroundColor(todoItem.isComplete ? Color("Primary") : .white)
            
            Text(todoItem.text)
                .foregroundColor(.white)
                .font(.subheadline)
                .strikethrough(todoItem.isComplete)
        }.frame(maxWidth: .infinity,alignment: .leading)
    }
}
