//
//  ContentView.swift
//  SillyNotes
//
//  Created by Yehor on 9/4/26.
//

import SwiftUI

struct ContentView: View {
    @State var manager = NotesManager()
    
    var body: some View{
        VStack(spacing: 20){
            
            Text("Wheel's result:")
                .font(.headline)
                .padding(.top, 20)
            
            Text(manager.currentResult)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
                .frame(maxWidth: .infinity, minHeight: 100)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(15)
                .padding(.horizontal)
            
            
            List(manager.notesList) { note in
                
                Button(action: {
                    manager.open(note: note)
                }) {
                    VStack(alignment: .leading){
                        Text(note.title)
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                    .padding(.vertical, 5)
                    
                }
            }
            .listStyle(.plain)
            
            
        }
    }
}

#Preview {
    ContentView()
}
