//
//  StateContentView.swift
//  LPAR
//
//  Created by Allan Hull on 12/18/19.
//  Copyright © 2019 Allan Hull. All rights reserved.
//

import SwiftUI

let usStatesEndpoint = "https://crom.mobi/state_flags_lpar.json"

struct usState: Codable, Identifiable {
    public var id: Int
    public var state: String
    public var image: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case state = "state"
        case image = "image"
    }
}

typealias usStates = [usState]

class usStateDownloader: ObservableObject {
    @Published var usstates: usStates = [usState]()
    
    @EnvironmentObject private var stateSettings: StateSettings

    init() {
        guard let url = URL(string: usStatesEndpoint) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let data = data else { return }
                let usstates = try JSONDecoder().decode( usStates.self, from: data)
                DispatchQueue.main.async {
                    self.usstates = usstates
                    print(self.usstates)
                }
            } catch {
                print("Error decoding JSON: ", error)
            }
        }.resume()
    }
}

struct StateContentView: View {
    
    @ObservedObject var usstateData: usStateDownloader = usStateDownloader()
    
    var body: some View {
        NavigationView {
            List(self.usstateData.usstates) { usstate in
                NavigationLink(destination:
                   PlateContentView(usstate: usstate)) {
 //                   arPlateContentView(usstate: usstate)) {

                    Image(usstate.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75.0, height: 50.0)
                        .clipShape(Rectangle())
                        .overlay(Rectangle()
                        .stroke(Color.red, lineWidth: 3))
  
                    Text(usstate.state)
                        .font(.system(size: 22))
                    
                }
           }
        .navigationBarTitle(Text("States"))
        Spacer()
   
        }
    }
}

struct StateContentView_Previews: PreviewProvider {
    static var previews: some View {
        StateContentView()
    }
}
