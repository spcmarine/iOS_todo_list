//
//  ContentView.swift
//  SwiftTodo
//
//  Created by Dan Gibson on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var todo1isOn = false
    @State private var todo2isOn = false
    @State private var todo3isOn = false
    @State private var todo4isOn = false
    @State private var todo5isOn = false
    @State private var todo1 = ""
    @State private var todo2 = ""
    @State private var todo3 = ""
    @State private var todo4 = ""
    @State private var todo5 = ""
    
    var body: some View {
        VStack(spacing: 0) {
            Image("todoLogo")
                .resizable()
                .aspectRatio(contentMode: .fit) // Adjusts the aspect ratio of the image
                .frame(width: 350, height: 350) // Set the desired size of the image
                .foregroundColor(.accentColor)
               
            HStack{
                Text("Todos!").font(.largeTitle)
                Text("Add them below").font(.body)
            }
            
            VStack{
                Toggle(isOn: $todo1isOn) {
                    TextField("Enter your Todo here", text: $todo1)
                                    .padding()
                                    .textFieldStyle(RoundedBorderTextFieldStyle())}
                Toggle(isOn: $todo2isOn) {
                    TextField("Enter your Todo here", text: $todo2)
                                    .padding()
                                    .textFieldStyle(RoundedBorderTextFieldStyle())}
                Toggle(isOn: $todo3isOn) {
                    TextField("Enter your Todo here", text: $todo3)
                                    .padding()
                                    .textFieldStyle(RoundedBorderTextFieldStyle())}
                Toggle(isOn: $todo4isOn) {
                    TextField("Enter your Todo here", text: $todo4)
                                    .padding()
                                    .textFieldStyle(RoundedBorderTextFieldStyle())}
                Toggle(isOn: $todo5isOn) {
                    TextField("Enter your Todo here", text: $todo5)
                                    .padding()
                                    .textFieldStyle(RoundedBorderTextFieldStyle())}
            }
        }
    }}

    #Preview {
        ContentView()
    }


