//
//  Note.swift
//  Noteify
//
//  Created by Tariyel Islami on 7.03.2023.
//

import Foundation

struct Note: Identifiable {
    var id: Int?
    let title: String
    let noteItemList: [NoteItem]
    let noteBackgroundState: BackgroundState
    let itemBackgroundState: BackgroundState
    let tag: String
    let date: String
    let password: String?
    let isLocked: Bool
}

protocol NoteItem {
    var state: NoteItemState { get }
}

struct TextFieldItem: NoteItem {
    let state: NoteItemState = .textField
    let text: String
}

struct TodoItem: NoteItem {
    let state: NoteItemState = .todoItem
    let text: String
    let isComplete: Bool
}

enum NoteItemState {
    case todoItem
    case textField
    case table
}

struct BackgroundState {
    
}

let defaultNote = Note(
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
)


var notes = [
    Note(
        id:1,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
    
    Note(
        id:2,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
    Note(
        id:3,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
    Note(
        id:4,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
    Note(
        id:5,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
    Note(
        id:6,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
    Note(
        id:7,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
    Note(
        id:8,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
    Note(
        id:9,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
    Note(
        id:10,
    title: "Title",
    noteItemList: [TextFieldItem(text: "Description"), TodoItem(text: "Todo item", isComplete: false), TodoItem(text: "Completed Todo item", isComplete: true), TextFieldItem(text: "Second Content")],
    noteBackgroundState: BackgroundState(),
    itemBackgroundState: BackgroundState(),
    tag: "Todo",
    date: "19 June",
    password: "",
    isLocked: false
),
]
