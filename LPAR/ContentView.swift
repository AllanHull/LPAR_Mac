//
//  ContentView.swift
//  LPAR
//
//  Created by Allan Hull on 12/18/19.
//  Copyright © 2019 Allan Hull. All rights reserved.
//

import SwiftUI

// Define Global Variables
class StateSettings: ObservableObject {
    enum StateSelect: String {
        case Iowa
        case Nebraska
        case other
    }
    
} // END: StateSettings

struct ContentView: View {
  
        var body: some View {
            TabView {

              IntroContentView()
                .tag(0)
                .tabItem {
                    VStack {
                        Spacer()
                        Image("icon-info")
                        Text("Info")
                    }
                }

                StateContentView()
                    .tag(1)
                    .tabItem {
                        VStack {
                            Image("icon-usa-map")
                            Text("States")
                        }
                    }
                
  //             ARQLView()
  //                readPlatesInfoJSON()
  //             EventContentView()
                arPlateContentView()
                    .tag(2)
                    .tabItem {
                        VStack {
                            Image("icon-usa-map")
                            Text("arPlateContentView")
                        }
                    }
                

            }
        }
}

// struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
// }
