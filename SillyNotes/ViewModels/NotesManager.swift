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
    
    func open(note: Note){
        let win = Wheel.spinWheel(chanceOfWinning: 70)
        
        if win{
            currentResult = note.content
        } else {
            currentResult = Scrambler.сruelScramble(input: note.content)
        }
    }
    
    func addNote(title: String, text: String){
        let newNote = Note(title: title, content: text)
        
        notesList.append(newNote)
    }
}
