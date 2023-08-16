//
//  PlateViewContentView.swift
//  LPAR
//
//  Created by Allan Hull on 3/9/20.
//  Copyright © 2020 Allan Hull. All rights reserved.
//

import SwiftUI

struct PlateViewContentView: View {
    var plate: Plate

    // State used to toggle showing our sheet containing AR QL preview
    @State var showingPreview = false
      
    // Turns off & on the ability to change the preview size within ARKit.
    @State var allowsScaling = false
    
    var imageType: String = "MyScene"
    
      
    var body: some View {
        VStack{
            
            // display map
    //        MapView(s1: plate.latitude, s2: plate.longitude, s3: plate.state, s4: " " )
   //             .frame(height: 200)
            
            // display plate image
   //         CircleSwiftUI(imagePIC: plate.imageLink)
   //             .offset(x: 0, y: -75)
   //             .padding(.bottom, -130)
            
            VStack(alignment: .leading){
            // display state plate
            Text(plate.state)
                .font(.title)
                
                
            // display plate type
            Text(verbatim: "Plate Type")
                .font(.system(size: 20))
                .foregroundColor(.green)
            Text(verbatim: plate.name)
                .font(.system(size:16))
            
                
             VStack(alignment: .leading) {
                
            Text("\n")
                
            // display description
            Text(verbatim: "Plate Description")
                .font(.system(size: 20))
                .foregroundColor(.green)
            Text(verbatim: plate.description)
                .font(.system(size:12))
        
            Text("\n")
                
            // display cost
            Text(verbatim: "Plate Cost")
            .font(.system(size: 20))
            .foregroundColor(.green)
            Text("$\(plate.cost)")
                .font(.system(size:12))
           
            } // end VStack
            
            // Allow the user to enable/disable scaling of the preview content.
            Toggle("Allow Scaling", isOn: $allowsScaling)
              
            Button("Tap here to display AR license plate")
            {
                // Action that runs when the button is tapped.
                // This one toggles the showing-preview state.
                
            
                self.showingPreview.toggle()
            }
            // This modifier tells SwiftUI to present a view in a modal sheet
            // when a state variable is set to true, and to dismiss it
            // when set to false.
            .sheet(isPresented: $showingPreview) {
                // Sheet content: the quick look view with a header bar containing
                // a simple 'close' button that closes the sheet.
                VStack {
                    // Top row: button, aligned left
                    HStack {
                        Button("Close") {
                            // Toggle the preview display off again.
                            // Swiping down (the system gesture to dismiss a sheet)
                            // will cause SwiftUI to toggle our state property as well.
                            self.showingPreview.toggle()
                        }
                        // The spacer fills the space following the button, in effect
                        // pushing the button to the leading edge of the view.
                        Spacer()
                    }
                    // Leave a little space all around the button.
                    .padding()
                      
                    // The actual quick-look view, which will scale to fill the
                    // available space.
                    ARQuickLookView(name: self.plate.imageLink, allowScaling: self.allowsScaling)

                    
                }
           //     Spacer()
            }
            Spacer()
        }
        
        } // vstack end
    }
    
  
}

// struct PlateViewContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlateViewContentView()
//    }
// }
