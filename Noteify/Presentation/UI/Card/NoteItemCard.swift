//
//  NoteItemCard.swift
//  Noteify
//
//  Created by Tariyel Islami on 7.03.2023.
//

import SwiftUI

struct NoteItemCard: View {
    var note: Note = defaultNote
    
    var body: some View {
        VStack(spacing: 8){
            HeadView(title: note.title)
            BodyView(noteItemList: note.noteItemList)

            Footer(date: note.date, tag: note.tag)
        }
        .padding(.horizontal)
        .padding(.vertical,8)
        .frame(maxWidth: .infinity,minHeight: 50,maxHeight: 150)
        .background(.gray)
        .cornerRadius(5)
    }
}

struct NoteItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            NoteItemCard()
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("Background"))
    }
}


struct HeadView: View {
    
    let title : String
    
    var body: some View {
        HStack{
            Text(title)
                .font(.title)
                .foregroundColor(.white)
                .bold()
            Spacer()
            IconButton(action: {}, iconName: "ellipsis")
        }.frame(alignment: .topLeading)
    }
}

struct BodyView: View {
    
    let noteItemList : [NoteItem]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            ForEach(noteItemList.firstThree(), id: \NoteItem.state) { noteItem in
                switch noteItem.state {
                case .textField:
                    let textFieldItem = noteItem as! TextFieldItem
                    Text(textFieldItem.text)
                            .foregroundColor(.white)
                            .font(.headline)
                            .lineLimit(.max)
                case .todoItem:
                    let todoItem = noteItem as! TodoItem
                    TodoItemTextCard(todoItem: todoItem)
                        .disabled(true)
                case .table:
                    EmptyView()
                }
            }
        }.frame(maxHeight: 125)
    }
}

struct Footer: View {
    let date : String
    let tag : String
    
    var body: some View {
        HStack{
            Text(date)
                .font(.footnote)
                .foregroundColor(.white)
                .bold()
            Spacer()
            
            
            Text(tag)
                .font(.footnote).bold()
                .foregroundColor(.white)
                .padding(.horizontal,4)
                .padding(.vertical,2)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.white.opacity(0.25))
                })
            
        }.frame(maxWidth: .infinity, alignment: .bottomLeading)
    }
}
