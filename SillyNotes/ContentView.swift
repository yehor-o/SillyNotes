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
        NavigationStack{
            VStack(spacing: 20){
                
                Text("Wheel's result:")
                    .font(.title)
                    .padding(.top, 20)
                
                if manager.isSpinning { //bug to fix
                    Image(systemName: "dice.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.orange)
                        .symbolEffect(.pulse)
                } else{
                    Text(manager.currentResult)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 1)
                        .background(Color.gray.opacity(0.05))
                        .cornerRadius(15)
                        .padding(.horizontal)
                }
                
                List{
                    
                    ForEach(manager.notesList) { note in
                        
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
                    .onDelete{indexSet in manager.removeNote(at: indexSet)}
                }
            }
            .listStyle(.plain)
            
            .navigationTitle("My Notes")
            
            .toolbar{
                NavigationLink(destination: AddNoteView(manager: manager)){
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
