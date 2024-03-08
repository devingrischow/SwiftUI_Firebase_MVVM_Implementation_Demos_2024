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
        
        NavigationStack{
        TabView {
            GettersExamplesView().tabItem {                     Label("More", systemImage: "list.bullet")
 }
                
                
            SettersExamplesView().tabItem {                     Label("More2", systemImage: "list.bullet")}
        }
            
    }
    }
}

#Preview {
    ContentView()
}
