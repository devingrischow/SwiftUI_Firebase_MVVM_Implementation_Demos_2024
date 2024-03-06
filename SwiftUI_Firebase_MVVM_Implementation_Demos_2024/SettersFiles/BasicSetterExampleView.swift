//
//  SetterExamples.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//

import SwiftUI

//GOAL: User Types A Favorite Book, and presses a button, then that sends it off

struct BasicSetterExampleView: View {
    
    @State private var bookTextInput:String = ""
    
    var body: some View {
        VStack{
            
            
            TextField("", text: $bookTextInput, prompt: Text("Whats your favorite book?").foregroundStyle(.white))
                .background(.gray)
                .foregroundStyle(.white)
                .cornerRadius(15)
                .frame(width: 300)
            
            
            Button(){
                print("Hello World!")
            }label: {
                    Text("Hello World")
            }

            
            
            //Bottom Of Vstack
        }
    }
}

#Preview {
    BasicSetterExampleView()
}
