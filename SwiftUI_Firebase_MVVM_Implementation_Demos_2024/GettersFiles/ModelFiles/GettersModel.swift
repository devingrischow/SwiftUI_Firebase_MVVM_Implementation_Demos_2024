//
//  GettersModel.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//
//A Model for the getters View Model To Store Data

import Foundation


struct GettersModel{
    
    
    var pickedBook:Book = Book()
    
    
    
    var retrivedPlace:TravelPlace = TravelPlace()
    
    
   
    
}

struct Book{
    //Basic Getter Data
    var pickedPlaceBookID:String = ""
    
    var pickedBookName:String = ""
}

struct TravelPlace{
    //Advanced Getter Data
    var placeID:String = ""
    
    var placeName:String = ""
    
    var placeLocation:String = ""
    
    var placeValue:Int = 0
}
