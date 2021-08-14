//
//  CircleSwiftUI.swift
//  LPAR
//
//  Created by Allan Hull on 5/9/20.
//  Copyright © 2020 Allan Hull. All rights reserved.
//

import SwiftUI

struct CircleSwiftUI: View {
    var imagePIC: String
    
    var body: some View {
       Image(imagePIC)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 125.0, height: 75.0)
        .clipShape(Rectangle())
        .overlay(Rectangle()
        .stroke(Color.red, lineWidth: 3))
    }
}

