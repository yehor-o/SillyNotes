//
//  ViewModel.swift
//  SillyNotes
//
//  Created by Єгор Оводов on 10/4/26.
//

class NotesManager{
    let notesList: [Note] = Note.exampleNotes
    
    func open(note: Note) -> String{
        var win = Wheel.spinWheel(chanceOfWinning: 60)
        
        if win{
            return note.content
        } else {
            return Scrambler.сruelScramble(input: note.content)
        }
    }
}
