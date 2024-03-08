//
//  GettersExamplesView.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//
//Example Ideas:
//Basic: User Presses A button to call to firebase to get a set piece of DATA

//Advanced: Returns A Array Of Documents from a collection from firebase, and Randomly picks 1 TO PRESENT TO THE VIEW, and then for good measure CLEARS the array

import SwiftUI

///This Is a Parent View for ALL the Examples
struct GettersExamplesView: View {
    
    @StateObject var viewModel = GettersViewModel()

    
    var body: some View {
                                
        VStack{
            Spacer()
            
            //Basic Getter Examples
            BasicGetterExamples().environmentObject(viewModel)
            
            Spacer()
            
            
            //Advanced Getter Examples
            AdvancedGettersExampleView().environmentObject(viewModel)
            
            
            
            Spacer()
        }
    }
}

#Preview {
    GettersExamplesView()
}
