//
//  ContentView.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//
//Create a Tab view with 2 main sides

//Getter Side
//Demonstrate Proper Use of basic getter and advanced getter


//Setter Side
 //Demonstrate Proper Use of basic setter and advanced setter

//Both Methods are using MVVM Best Practices and Tested



import SwiftUI

struct ContentView: View {
    
  
    
    var body: some View {
        
        
        TabView  {
            GettersExamplesView().tabItem {
                /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
            SettersExamplesView().tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
        }
    }
}

#Preview {
    ContentView()
}
