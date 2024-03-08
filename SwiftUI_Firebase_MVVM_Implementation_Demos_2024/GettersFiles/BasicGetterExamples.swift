//
//  GetterExamples.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//

import SwiftUI


//Getter Goal: Retrieved a Static Book Based On A Set ID
struct BasicGetterExamples: View {
    
    @EnvironmentObject var advancedExampleViewModel:GettersViewModel

    
    
    var body: some View {
        VStack{
            Button(){
                print("Hello World!")
            }label: {
                Text("Call to Firebase for a book")
            }.buttonStyle(.borderedProminent)
                .padding()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
        }
    }
}

#Preview {
    BasicGetterExamples().environmentObject(GettersViewModel())
}
