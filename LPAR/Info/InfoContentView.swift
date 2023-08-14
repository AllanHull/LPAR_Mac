//
//  InfoContentView.swift
//  LPAR
//
//  Created by Allan Hull on 12/18/19.
//  Copyright © 2019 Allan Hull. All rights reserved.
//

import SwiftUI

struct InfoContentView: View {
    var body: some View {
        Form {
            
            // About
            Section(header: Text("LPAR License Plate Augmented Reality").font(.system(size:14, weight: .bold)).foregroundColor(.black)) {
                Text("LPAR allows the selection of various US states license plates and how they would appear on your vehicle.").font(.system(size: 14))
            }
            
            Section(header: Text("Step 1: Select US State").font(.system(size:14, weight: .bold)).foregroundColor(.black)) {
                Text("Tap on the States icon, to display the US States. Tap on the individual state (ex: Nebraska) to display licese plates available from that state.").font(.system(size:14))
            }
            
            Section(header: Text("Step 2: Select individual license plate").font(.system(size:14, weight: .bold)).foregroundColor(.black)) {
                IntroStackImageView1(
                    title: "Step #2 - Select individual license plate",
                    image: "AR_Husker_Plate")
            }
            
            Section(header: Text("Step 3: Click AR Plate image to display on car").font(.system(size:14, weight: .bold)).foregroundColor(.black)) {
                IntroStackImageView1(
                    title: "Step #3 - Click AR Plate image to display on car",
                    image: "AR_Car_Plate")
            }
    
            
        } // END: Form
    }
}

struct IntroStackImageView1: View {
    var title: String
    var image: String
    
    var body: some View {
 //       Text(title)
 //           .font(.system(size: 14, weight: .bold))
 //           .padding(.leading, 10)
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250.0, height: 100.0, alignment: .center)
            .clipShape(Rectangle())
            .overlay(Rectangle()
            .stroke(Color.red, lineWidth: 2))
            .padding(.leading, 20)
     //   Divider()
    }
}

struct InfoContentView_Previews: PreviewProvider {
    static var previews: some View {
        InfoContentView()
    }
}
