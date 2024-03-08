//
//  AdvancedGettersExampleView.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//

import SwiftUI

struct AdvancedGettersExampleView: View {
    
    @EnvironmentObject var advancedExampleViewModel:GettersViewModel
    
    var body: some View {
        
        VStack{
            Spacer()
            
            
            
            
            Button(){
                print("Hello World!")
            }label: {
                Text("Pick A Random Travel Desination!")
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            
            
            
            
            //Place Name
            Text("Plain Text")
            
            
            
            
            
            
            Spacer()
            
            
            
            
            
            
            //Place Location
            //Location Of users Favorite Place
            Text("Place Location")
            
            
            
            
            
            Spacer()
            
            
            
            
            
            //Place Value
            Text("Place Value")
            
            
            
            
            
            
            Spacer()
            
        }
        
        
    }
}

#Preview {
    AdvancedGettersExampleView().environmentObject(GettersViewModel())
}
