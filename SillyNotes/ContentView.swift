//
//  ContentView.swift
//  SillyNotes
//
//  Created by Yehor on 9/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(Note.exampleNotes) { note in
                NavigationLink(destination: Text("there will be naked yehor")){
                    VStack(alignment: .leading) {
                        Text(note.title)
                            .font(.headline)
                        Text(note.content)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        
                    }
                    
                    
                    
                    
                }
                .navigationTitle("SillyNotes")
                
            }
        }
        
    }
}
#Preview {
    ContentView()
}

