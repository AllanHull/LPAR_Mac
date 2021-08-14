//
//  ContentView.swift
//  LPAR
//
//  Created by Allan Hull on 12/18/19.
//  Copyright © 2019 Allan Hull. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
        var body: some View {
            TabView {
                NavigationView {
                    InfoContentView()
                }
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
                                   
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
