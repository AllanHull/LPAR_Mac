//
//  StateDetailContentView.swift
//  LPAR
//
//  Created by Allan Hull on 12/23/19.
//  Copyright © 2019 Allan Hull. All rights reserved.
//

import SwiftUI

struct StateDetailContentView: View {
    
    var usstate: usState
    
    var body: some View {
        VStack {
            Text(verbatim: usstate.state)
            Text(verbatim: usstate.image)
        }
    }
}

