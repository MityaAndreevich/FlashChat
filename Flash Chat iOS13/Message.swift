//
//  Message.swift
//  Flash Chat iOS13
//
//  Created by Dmitry Logachev on 23.01.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct Message {
    let sender: String
    let body: String
    
    static func getMessages() -> [Message] {
        [
            Message(sender: "1@2.com", body: "Hey!"),
            Message(sender: "a@b.com", body: "Hello!"),
            Message(sender: "1@2.com", body: "What's up?")
        ]
    }
}
