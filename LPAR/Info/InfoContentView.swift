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
        
  
 //       NavigationView {
        List {
            // title
            VStack(alignment: .leading) {
            Text("LPAR License Plate Augmented Reality")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.blue)
            Text(" ")
            Text("LPAR allows the selection of various US states license plates and how they would appear on your vehicle.")
                .font(.system(size: 12))
                .foregroundColor(.red)
            }
            
            // divider
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                }
            Text(" ")
            }
            .background(Color.gray)

            // step #1
            VStack(alignment: .leading) {
            Text("Step #1 - Select US State")
                .font(.system(size: 18))
                .foregroundColor(.black)
            Text("Tap on the States icon, to display the US States. Tap on the individual state (ex: Nebraska) to display licese plates available from that state.")
                .font(.system(size: 12))
                .foregroundColor(.red)
            }
            
            
            // divider
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                }
            Text(" ")
            }
            .background(Color.gray)
            
            // step #2
            VStack(alignment: .leading){
            Text("Step #2 - Select individual license plate")
                Image("AR_Husker_Plate")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250.0, height: 125.0)
                    .clipShape(Rectangle())
                    .overlay(Rectangle()
                    .stroke(Color.red, lineWidth: 3))
            }
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                }
            Text(" ")
            }
            .background(Color.gray)
            
            
            // step #3
            VStack(alignment: .leading){
             Text("Step #3 - Tap AR Plate image to display on car")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
             Image("AR_Car_Plate")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250.0, height: 125.0)
                .clipShape(Rectangle())
                .overlay(Rectangle()
                .stroke(Color.red, lineWidth: 3))
            }
                
        } // end List
 //           .navigationBarTitle("License Plate Agmented Reality", displayMode: .inline)


//        } // end NavigationView
    }
}

struct InfoContentView_Previews: PreviewProvider {
    static var previews: some View {
        InfoContentView()
    }
}
