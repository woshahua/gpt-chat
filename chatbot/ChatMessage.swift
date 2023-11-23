//
//  ChatMessage.swift
//  chatbot
//
//  Created by Han Ko on 2023/11/24.
//

import Foundation

struct ChatMessage: Identifiable {
    var id = UUID()
    var text: String
    var avatar: String
    var isSender: Bool
}

var messages = [
        ChatMessage(text: "你好，有什么可以帮助你的？", avatar: "A", isSender: false),
    ChatMessage(text: "我想知道今天的天气怎么样.", avatar: "B", isSender: true),
    ChatMessage(text: "今天的天气非常好.", avatar: "A", isSender: false)
]
