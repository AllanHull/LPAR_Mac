//
//  StateSelectView.swift
//  LPAR
//
//  Created by Allan Hull on 8/10/23.
//  Copyright © 2023 Allan Hull. All rights reserved.
//

import SwiftUI

struct StateSelectView: View {
    
    // define global variables
//    @EnvironmentObject private var stateSettings: StateSettings
    
    // define @State variables
//    @State private var state: String = "State"
    @State private var arPlateContentView = false
    var message = "NE"

    
    // define array values
    let stateList = ["IA","NE"]
    
    var body: some View {
        Form {
            
            Section(header: Text("Button")) {
                
                Button(action: {
                    self.arPlateContentView.toggle()
                }){
                    Text("Load arPlateContentView")
                    
                }.sheet(isPresented: $arPlateContentView){
               //     arPlateContentView(message: self.message)
                }
                
            }
            
            
//            Section(header: Text("States")) {
                
//                Picker("State", selection: $stateSettings.stateSelect) {
//                    Text("IA").tag(StateSettings.StateSelect.IA)
//                    Text("NE").tag(StateSettings.StateSelect.NE)
//                }
                
//            } // END: section: States
            
//            Section(header: Text("Values Picked")) {
//                Text("You Selected State = \(stateSettings.stateSelect.rawValue)")
//            }
            
        } // END: Form
    }
}

struct StateSelectView_Previews: PreviewProvider {
    static var previews: some View {
        StateSelectView()
    }
}
