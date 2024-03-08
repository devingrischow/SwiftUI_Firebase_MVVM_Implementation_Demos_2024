//
//  GettersViewModel.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//

import Foundation
import FirebaseFirestore

class GettersViewModel:ObservableObject{
    
    @Published var gettersModel = GettersModel()
    
    
    ///Get a pre determined BOOK from firebase
    ///Using a hardcoded document Reference
    func getBookFromFirebase() async{
        let db = Firestore.firestore()

        //THis example uses a hard coded RANDOM DOCID, but typically you will be getting it from a QUERY, but its still good to see.
        let hardCodedDocID = "s7dRuVzzviZDQtTi2INU"
        
        
        
        
        do{
            
            
            //Create a variable to store the to be returned book data
            var bookDataToReturn:[String:Any] = [:]
            
            //set the bookdata to the Collection of returned DATA.
            bookDataToReturn = try await db.collection("Books").document(hardCodedDocID).getDocument().data()!
            
            
            //On the MAIN THREAD set the books value to the retrived BOOK VALUE
            let bookName = bookDataToReturn["bookName"] as! String
            DispatchQueue.main.async {
                let booked = Book(pickedBookName: bookName)
                
                //set the getters model book value to the new bookName
                self.gettersModel.pickedBook = booked
                
                
            }
            
            
            
            
            
        }catch{
            print(error.localizedDescription, "A Error Occured when Getting a Book")

        }
        
    }
    
    //MARK: getPickedBookName
    ///This View Model Function soley handles returning the value of the current BookName.
    func getPickedBookName()->String{
        return gettersModel.pickedBook.pickedBookName
    }
    
    
    
    
    
    ///Retrive a RANDOM document from all the items in the Travel destinations Collection.
    ///
    func getRandomTravelDestination() async{
        let fs = Firestore.firestore()

        
        //query the database for everything
        
        
        let dataPoint = fs.collection("TravelDestinations")
        
        var locationsData:[String:Any] = [:]

        
        do{
            
            let dataSnapshot = try await dataPoint.getDocuments()
            
            //query snapshot is a array
            //Pick a random item from the array
            let randomTravelPlace = dataSnapshot.documents.randomElement()
            
            //turn it into data and set class data
            let randomTravelPlaceData = randomTravelPlace!.data()
            DispatchQueue.main.async {
                self.gettersModel.retrivedPlace.placeID = randomTravelPlaceData["travelPlaceName"] as! String
                self.gettersModel.retrivedPlace.placeName = randomTravelPlaceData["travelPlaceName"] as! String
                
                self.gettersModel.retrivedPlace.placeLocation = randomTravelPlaceData["travelDestination"] as! String
                
                self.gettersModel.retrivedPlace.placeValue = randomTravelPlaceData["travelValue"] as! Int
            }
            //Set the view models travel destination to the retrived value
            
            
        }catch{
            print("\(error) + An Error Has Occured Retrieving Travel data")

        }
    }
    
    
    
   //Get the retrived values from the Travel Destination
    func getTravelName() -> String{
        return gettersModel.retrivedPlace.placeName
    }
    
    func getTravelLoc() -> String{
        return gettersModel.retrivedPlace.placeLocation
    }
       
    func getTravelValue() -> Int{
        return gettersModel.retrivedPlace.placeValue
    }
       
    
    
    
    
    
    
    
    
}
