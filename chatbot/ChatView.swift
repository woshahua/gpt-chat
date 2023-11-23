//
//  ChatView.swift
//  chatbot
//
//  Created by Han Ko on 2023/11/24.
//

import Foundation
import SwiftUI

struct MessageRow: View {
    var chatMessage: ChatMessage
    var isLast: Bool = false

    var body: some View {

        HStack {
            if self.chatMessage.isSender {
                Spacer()
                Text(chatMessage.text).padding(10).background(Color.green).cornerRadius(10)
            } else {
                Text(chatMessage.text).padding(10).background(Color.blue).cornerRadius(10)
                Spacer()
            }
        }
    }
}

struct ChatView: View {
    @State private var barText: String = ""

    var body: some View {
        VStack {
            ScrollView {
                ForEach(messages) { msg in
                    MessageRow(chatMessage: msg)
                }
            }
            HStack {
                TextField($barText, placeholder: Text("输入消息..."))
                Button(action: {
                    print(self.barText)

                    let countOfMessages = messages.count
                    messages.append(ChatMessage(text: barText, avatar: "B", isSender: (countOfMessages % 2) == 1) )
                    self.barText = ""
                }, label: {
                    Text("发送")
                })
            }.padding()
        }
    }
}
