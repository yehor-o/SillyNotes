//
//  AddNoteView.swift
//  SillyNotes
//
//  Created by Єгор Оводов on 10/4/26.
//
import SwiftUI

struct AddNoteView: View{
    @State var newTitle = ""
    @State var newContent = ""
    
    var manager : NotesManager
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        
        VStack(spacing: 20){
            
            TextField("Title", text: $newTitle)
                .textFieldStyle(.roundedBorder)
            
            TextEditor(text: $newContent)
                .border(Color.gray.opacity(0.3), width: 1)
            
            Button("Save"){
                manager.addNote(title: newTitle, text: newContent)
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
