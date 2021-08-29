//
//  IntroContentView.swift
//  LPAR
//
//  Created by Allan Hull on 8/22/21.
//  Copyright © 2021 Allan Hull. All rights reserved.
//

import SwiftUI

struct IntroContentView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            // About
            IntroStackView(
                title: "LPAR License Plate Augmented Reality",
                value: "LPAR allows the selection of various US states license plates and how they would appear on your vehicle.")
            
            // Step #1
            IntroStackView(
                title: "Step #1 - Select US State",
                value: "Tap on the States icon, to display the US States. Tap on the individual state (ex: Nebraska) to display licese plates available from that state.")
            
            // Step #2
            IntroStackImageView(
                title: "Step #2 - Select individual license plate",
                image: "AR_Husker_Plate")
            
            // Step #3
            IntroStackImageView(
                title: "Step #3 - Tap AR Plate image to display on car",
                image: "AR_Car_Plate")
            
            Spacer()
            
        } // END: VStack
 
    }
}

struct IntroStackView: View {
    var title: String
    var value: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .bold))
            .padding(.leading, 10)
        Text("")
        Text(value)
            .font(.system(size: 16))
            .foregroundColor(.accentColor)
            .padding(.leading, 10)
            .padding(.trailing, 10)
        Divider()
    }
}

struct IntroStackImageView: View {
    var title: String
    var image: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .bold))
            .padding(.leading, 10)
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 280.0, height: 125.0, alignment: .center)
            .clipShape(Rectangle())
            .overlay(Rectangle()
            .stroke(Color.red, lineWidth: 2))
            .padding(.leading, 50)
        Divider()
    }
}

struct IntroContentView_Previews: PreviewProvider {
    static var previews: some View {
        IntroContentView()
    }
}
