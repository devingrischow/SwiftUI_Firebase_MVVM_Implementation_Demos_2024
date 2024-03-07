//
//  GettersModel.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//
//A Model for the getters View Model To Store Data

import Foundation


struct GettersModel{
    
    
    var pickedBook:Book
    
    
    
    var retrivedPlace:TravelPlace
    
    
   
    
}

struct Book{
    //Basic Getter Data
    var pickedPlaceBookID:String = ""
    
    var pickedBookName:String = ""
}

struct TravelPlace{
    //Advanced Getter Data
    var pickedPlaceID:String = ""
    
    var pickedPlaceName:String = ""
    
    var pickedPlaceLocation:String = ""
    
    var pickedValue:Int = 0
}
