//
//  Note.swift
//  SillyNotes
//
//  Created by Єгор Оводов on 10/4/26.
//
import Foundation


struct Note: Identifiable {
    let id = UUID()
    var title: String
    var content: String
}

extension Note{
    static let exampleNotes = [
        Note(title: "Hello", content: "Hello World"),
        Note(title: "Bye", content: "Bye World"),
        Note(title: "For Eugene", content: "You are noob"),
    ]
}
