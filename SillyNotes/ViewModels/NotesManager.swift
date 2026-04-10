//
//  ViewModel.swift
//  SillyNotes
//
//  Created by Єгор Оводов on 10/4/26.
//
import SwiftUI

@Observable
class NotesManager {
    var notesList: [Note] = Note.exampleNotes
    
    var currentResult: String = "Select note to play!"
    
    var isSpinning: Bool = false
    
    func open(note: Note){
        isSpinning = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            let win = Wheel.spinWheel(chanceOfWinning: 70)
            
            if win{
                self.currentResult = note.content
            } else {
                self.currentResult = Scrambler.сruelScramble(input: note.content)
            }
            self.isSpinning = false
        }
    }
    
    func addNote(title: String, text: String){
        let newNote = Note(title: title, content: text)
        
        notesList.append(newNote)
    }
    
    func removeNote(at offsets: IndexSet){
        notesList.remove(atOffsets: offsets)
    }
}
