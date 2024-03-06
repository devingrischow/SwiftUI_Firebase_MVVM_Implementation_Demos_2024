//
//  AdvancedSettersExampleView.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//

import SwiftUI

//Goal: Set a few document fields for adding a new global Travel Location
//If a travel destination is alreadu added, dont add this one
struct AdvancedSettersExampleView: View {
    
    @State private var travelDestinationName:String = ""
    @State private var travelDestinationLocation:String = ""
    @State private var travelValueIncrement:Int = 0
    
    

    
    var body: some View {
        VStack{
            
            Text("Enter A Travel Destination")
            
            //This is the NAME of the destination, but the name will also be simplified and be used as the UUID
            TextField("", text: $travelDestinationName, prompt: Text("  Whats the name of your favorite travel destination?")
                .font(.subheadline)
                .foregroundStyle(.white))
                .background(.gray)
                .foregroundStyle(.white)
                .cornerRadius(15)
                .frame(width: 380)
            
            
            TextField("", text: $travelDestinationLocation, prompt: Text("  Where is this place?")
                .font(.subheadline)
                .foregroundStyle(.white))
                .background(.gray)
                .foregroundStyle(.white)
                .cornerRadius(15)
                .frame(width: 380)
            
            
            
            HStack{
                
                Button(){
                    print("Hello World!")
                    travelValueIncrement += 1
                }label: {
                        Text("Increment")
                }
                
                Text("\(travelValueIncrement)")
                
                
                //Bottom Of Hstack
            }
            
            
            
            Button(){
                print("Hello World!")
            }label: {
                    Text("Add Value To Firebase")
            }.buttonStyle(.borderedProminent)
            
            
            //Bottom Of Vstack
        }
    }
}

#Preview {
    AdvancedSettersExampleView()
}
