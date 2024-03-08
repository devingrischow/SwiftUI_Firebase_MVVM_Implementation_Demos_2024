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
                //Call to the advanced object to get its values
                Task{
                    await advancedExampleViewModel.getRandomTravelDestination()
                }
            }label: {
                Text("Pick A Random Travel Desination!")
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            
            
            
            
            //Place Name
            Text(advancedExampleViewModel.getTravelName())
            
            
            
            
            
            
            Spacer()
            
            
            
            
            
            
            //Place Location
            //Location Of users Favorite Place
            Text(advancedExampleViewModel.getTravelLoc())
            
            
            
            
            
            Spacer()
            
            
            
            
            
            //Place Value
            Text(String(advancedExampleViewModel.getTravelValue()))
            
            
            
            
            
            
            Spacer()
            
        }
        
        
    }
}

#Preview {
    AdvancedGettersExampleView().environmentObject(GettersViewModel())
}
