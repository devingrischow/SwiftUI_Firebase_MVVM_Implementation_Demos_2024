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

    @State private var retrievedBookTitle:String = "Book Name...."
    
    var body: some View {
        VStack{
            
            Text(advancedExampleViewModel.getPickedBookName())
            
            
            Button(){
                Task{
                    await advancedExampleViewModel.getBookFromFirebase()
                }
            }label: {
                Text("Call to Firebase for a book")
            }.buttonStyle(.borderedProminent)
                .padding()
            
            
            
        }
    }
}

#Preview {
    BasicGetterExamples().environmentObject(GettersViewModel())
}
