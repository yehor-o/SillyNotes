//
//  WheelService.swift
//  SillyNotes
//
//  Created by Єгор Оводов on 10/4/26.
//

struct Wheel{
    static func spinWheel(chanceOfWinning: Int) -> Bool{
        let randomInt = Int.random(in: 0...100)
        
        return randomInt <= chanceOfWinning
    }
}
