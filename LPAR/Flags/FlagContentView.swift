//
//  FlagContentView.swift
//  LPAR
//
//  Created by Allan Hull on 12/30/19.
//  Copyright © 2019 Allan Hull. All rights reserved.
//

import SwiftUI

let flagsEndpoint = "https://allanhull.net/downloads/state_flags_lpar_ui.json"

struct Flag: Codable, Identifiable {
    public var id: Int
    public var flag: String
    public var image: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case flag = "flag"
        case image = "image"
    }
}

typealias Flags = [Flag]

class FlagDownloader: ObservableObject {
    @Published var flags: Flags = [Flag]()

    init() {
        guard let url = URL(string: flagsEndpoint) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let data = data else { return }
                let flags = try JSONDecoder().decode(    Flags.self, from: data)
                DispatchQueue.main.async {
                    self.flags = flags
                    print(self.flags)
                }
            } catch {
                print("Error decoding JSON: ", error)
            }
        }.resume()
    }
}

struct FlagContentView: View {
    
    @ObservedObject var flagData: FlagDownloader = FlagDownloader()
    
    
    var usstate: usState
    
    var body: some View {
               NavigationView {
                   List(self.flagData.flags) { flag in
                       NavigationLink(destination:     ARViewInfo(flag: flag)) {
                    
                        if flag.flag == self.usstate.state {
                        Text(flag.flag)
                            Text(self.usstate.state
                            )
                        Text(flag.image)
 
                    }
        
     //                   Text(flag.flag)
     //                   Text(self.state.state)
                   }
                  }
               .navigationBarTitle(Text("Flags"))
               }
        
        
//        VStack {
//            Text(verbatim: state.state)
//            Text(verbatim: state.image)
 //       }
    }
}

// struct FlagContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        FlagContentView()
//    }
// }
