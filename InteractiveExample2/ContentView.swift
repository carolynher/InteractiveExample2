//
//  ContentView.swift
//  InteractiveExample2
//
//  Created by Carolyn Hernandez on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    
    //this variable is called a property because it is part of a Struct ; State is property wrapper
    //property wrapper = wraps a property and gives it additional behvior
    // @State property --> used to represent the internal state of a SwiftUI View, & to automatically make a view update when that state is changed - whenever the property changes, the UI must update
    //it's recommended to be a private var --> emphasizes that the state does not leave the view it was created in (instead of being local)
    @State private var name = ""
    @State private var titleText = "What is your name?"
    
    var body: some View {
        //adding spacing to all views/controls
        VStack(spacing: 100) {
            //refers to property variable
            Text(titleText)
                .font(.title)
            
            //a Conrol --> allows for user interactions
            //uses two-way binding --> binds TextField so that it shows the value of the name property & binds name property so any changes to the TextField update the name property
            //two-way binding requires '$'
            TextField("Type name here...", text: $name) // the text is asking where we would like to store the user's input text (ex. in a specific variable)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            //a Control; a button initiates an action (action = indicate what we would like accomplished when the user taps the button); in this case we want it to update the title to display the user's name
            Button("Submit Name") {
                titleText = "Welcome, \(name)!"
            }
            //adding modifiers to button
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)

        }
        //add padding so text field does not touch the edge
        .padding()
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


