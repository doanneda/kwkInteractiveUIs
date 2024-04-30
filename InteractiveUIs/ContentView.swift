//
//  ContentView.swift
//  InteractiveUIs
//
//  Created by Scholar on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var presentAlert = false
    @State private var name = ""
    @State private var date = Date()
    
    var body: some View {
        VStack (spacing: 50) {
            Text("What school are you attending?  ✏️📓📚")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            TextField("School Name", text: $name)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Text("When do you expect to graduate? 🧑‍🎓🎓🎉")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            DatePicker(selection: $date, displayedComponents: .date, label: { Text("Date") })
                .font(.title2)
            
            Button("Submit") {
                presentAlert = true
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            
            .alert("Congratulations! You have graduated from \(name) on \(date.formatted(date: .long, time: .omitted)) 🥳", isPresented: $presentAlert) {
                Button("On to the next chapter...", role: .cancel) { }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
