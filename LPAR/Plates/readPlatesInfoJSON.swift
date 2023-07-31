//
//  readPlatesInfoJSON.swift
//  LPAR
//
//  Created by Allan Hull on 5/19/23.
//  Copyright © 2023 Allan Hull. All rights reserved.
//

import SwiftUI

let slatesJsonEndpoint = "https://crom.mobi/plates_info.json"

// define Plate record layout
struct Slate: Codable, Identifiable {
    public var id: Int
    public var state: String
    public var image: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case state = "state"
        case image = "image"
    }
}

typealias Slates = [Slate]

class SlateDownloader: ObservableObject {
    @Published var slates: Slates = [Slate]()

    init() {
        guard let url = URL(string: slatesJsonEndpoint) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let data = data else { return }
                let slates = try JSONDecoder().decode( Slates.self, from: data)
                DispatchQueue.main.async {
   //                 self.events = events
   //                 print(self.events)
                    self.slates = slates
                    print(self.slates)
                }
            } catch {
                print("Error decoding JSON: ", error)
            }
        }.resume()
    }
}

struct readPlatesInfoJSON: View {
    
    @ObservedObject var slateData: SlateDownloader =  SlateDownloader()
    
    var body: some View {
    //    NavigationView {
            List(self.slateData.slates) { slate in
                Text(verbatim: slate.state)
            }
    //    }
       Text("Hello World")
    }
}
 
