//
//  SetterExamples.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//

import SwiftUI

//GOAL: User Types A Favorite Book, and presses a button, then that sends it off

struct BasicSetterExampleView: View {
    
    ///A enviornmental object of the Setters View model from the *Setters Example View*. \
    ///This object serves to interact with the view model within this view.
    @EnvironmentObject var basicSettersVM:SettersViewModel

    @State private var bookTextInput:String = ""
    
    
    ///A variable to check when the user is adding something, to determine when to DISPLAY a alert text
    @State private var isAddingSomething:Bool = false
    
    
    var body: some View {
        VStack{
            
            //This text field is the name of the new book Entered in by the USER
            TextField("", text: $bookTextInput, prompt: Text("Whats your favorite book?").foregroundStyle(.white))
                .background(.gray)
                .foregroundStyle(.white)
                .cornerRadius(15)
                .frame(width: 300)
            
            
            
            if isAddingSomething{
                //User Started Adding Something, so display a message saying "item Added!", then as it appeared have a delay for a few seconds then make it dissapear
                
                Text("New Book Added!").onAppear{
                    //On Appear, start a dispatch que to reset the appear status after a few seconds
                    
                    
//                    After 2 seconds, toggle the Adding State, so it will go away naturally
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        isAddingSomething.toggle()
                    }
                    
                }
                
                
            }
            //*=================Bottom of is Adding Check==============================*/

            
            //This button will ADD a new document to firebase through the view Models FUNCTION
        
            Button(){
                
                //Set a NEW BOOK to firebase with the bookText
                basicSettersVM.addBooktoFirebase(bookTitle: bookTextInput)
                
                //Toggle the *isAdding* to let the alert display
                isAddingSomething.toggle()
            }label: {
                    Text("Add a New Book To Firebase")
            }

            
            
            //Bottom Of Vstack
        }
    }
}

#Preview {
    BasicSetterExampleView()
}
