//
//  HomeView.swift
//  Noteify
//
//  Created by Tariyel Islami on 7.03.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State var isShow = false
    
    
    var body: some View {
        VStack{
            
            
            
            
            
            List{
                LazyVStack{
                    ForEach(notes,id: \.id){ note in
                        NoteItemCard(note: note)
                            .swipeActions(edge: .trailing) {
                                Button(action: {
                                    // Silme işlevi burada yer alır
                                }) {
                                    Label("Sil", systemImage: "trash")
                                }
                                
                                Button(action: {
                                    // Düzenleme işlevi burada yer alır
                                }) {
                                    Label("Düzenle", systemImage: "pencil")
                                }
                            }
                    }
                }
                .listRowBackground(Color("Background"))
                
            }.listStyle(.plain)
            
            
            
            
            
            
            
        }
        .navigationBarTitle("Notes")
        .toolbar{
            ToolbarItem(
                placement: .navigationBarTrailing,
                content: {HomeTopAppBarTrailingItem()}
            )
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("Background"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
    }
}
