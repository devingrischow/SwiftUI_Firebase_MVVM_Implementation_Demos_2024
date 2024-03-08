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
    
    ///A enviornmental object of the Setters View model from the *Setters Example View*. \
    ///This object serves to interact with the view model within this view.
    @EnvironmentObject var setterVM:SettersViewModel
    
    
    //Variables used to store what the user types and enters.
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
                //First create a new travel destination through the users inputted values
                Task{
                    //Have the ID of the document be the name but camelCase
                    let newTravelDestination = TravelPlace(placeID: travelDestinationName.toCamelCase, placeName: travelDestinationName,placeLocation: travelDestinationLocation , placeValue: travelValueIncrement)
                    
                    
                    setterVM.setToTravelValues(newTravelPlace: newTravelDestination)
                    
                    //Next call the Add Travel Destination Function to add it to Firebase.
                    await setterVM.addTravelDestination()
                    
                    
                }
                
                //With the new book, send its data over to to the viewmodel function and to FIREBSE
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


//Custom String Extension To Convert Strings to CamelCase
extension String {
    // Computed property to convert a string to camelCase
    var toCamelCase: String {
        // Lowercase the string and split into words using non-letter characters as separators
        let items = self.lowercased().split{ !$0.isLetter }.map { String($0) }
        // Transform each word: capitalize the first letter of each word except the first one
        let camelCasedItems = items.enumerated().map { index, word in
            // If it's the first word, return it as is; otherwise, capitalize it
            index > 0 ? word.capitalizingFirstLetter() : word
        }
        // Join all the words back into a single string
        return camelCasedItems.joined()
    }
    
    // Helper function to capitalize the first letter of a string
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}
