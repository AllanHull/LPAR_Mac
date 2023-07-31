//
//  InventoryContentView.swift
//  LPAR
//
//  Created by Allan Hull on 8/29/21.
//  Copyright © 2021 Allan Hull. All rights reserved.
//

import SwiftUI

struct InventoryContentView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
        
            // HStack Row 1
            HStack(alignment: .top) {
                
                // Telsa
                Button(action: {print("Tesla")} ) {
                    InventoryStackImageView(
                        title: "Telsa",
                        image: "Tesla_Model_3")
                }
                
                // Ford Mach E
                Button(action: {print("Mach E")} ) {
                InventoryStackImageView(
                    title: "Ford Mach E",
                    image: "Ford_Mach_E")
                }
                
            } // END: HStack Row 1
            
            // HStack Row 2
            HStack(alignment: .top) {
                
                // Chevy Bolt
                Button(action: {print("Chevy Bolt")} ) {                InventoryStackImageView(
                    title: "Chevy Bolt",
                    image: "Chevy_Bolt")
                }
                
                // Porsche Taycan
                Button(action: {print("Porsche Taycan")} ) {
                InventoryStackImageView(
                    title: "Porsche Taycan",
                    image: "Porsche_Taycan")
                }
                
            } // END: HStack Row 2
            
            // HStack Row 3
            HStack(alignment: .top) {
                
                // Mini Cooper SE
                Button(action: {print("Mini Cooper SE")} ) {                InventoryStackImageView(
                    title: "Mini Cooper SE",
                    image: "Mini_Cooper_SE")
                }
                
                // Telsa
                InventoryStackImageView(
                    title: "Step #2 - Select individual license plate",
                    image: "Tesla_Model_3")
                
            } // END: HStack Row 3
            
            
            
            Spacer()
        }
       
    }
}

struct InventoryStackImageView: View {
    var title: String
    var image: String
    
    var body: some View {
  //      Text(title)
  //          .font(.system(size: 20, weight: .bold))
  //          .padding(.leading, 10)
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180.0, height: 125.0, alignment: .center)
            .clipShape(Rectangle())
            .overlay(Rectangle()
            .stroke(Color.red, lineWidth: 2))
            .padding(.leading, 5)
            .padding(.leading, 5)
  //      Divider()
    }
}


struct InventoryContentView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryContentView()
    }
}
