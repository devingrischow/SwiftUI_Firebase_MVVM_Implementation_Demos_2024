
# SwiftUI Firebase MVVM Implementation Demos 2024

In this repository is a collection of demonstrations how various implementations of firebase, as well as how to install firebase into a project. This repository will also provide steps how to get started using Firestore in a project as well. 


## How to initiate A new Firebase project

Head to the [Firebase website](https://firebase.google.com) and sign in with a google account.


Next create your first *Firebase project*, head to the [Firebase console](https://console.firebase.google.com) to get started and create a **new** *Firebase Project*. Follow the guided instructions from firebase to create your project. 





## How to install Firebase into a IOS project

With a existing project, go to the **Project Overview** tab. 

Once there, press on the `IOS+` button to get started with adding your firebase project into a xcode project. 

Follow along with the on screen instructions to install and add firebase to a IOS+ project. 

For the `Add initialization code`, create a new `.swift` file and call it `AppDelegate`, then paste in the delegate code from firebase into here. 



## Setting up Firestore

The biggest use for firebase is firestore, with its **NOSQL** database. To get started head over to the `Build` tab and expand it. 

Click on the `Firestore Database` Option 

Click `Create Database` to get started. 

When creating a new database, you will get a prompt to select where to database is stored, leave it at **Default** it was on (Its most likely set to theclosest server to where you are in the world.)

Start the database in **Test Mode**. This will let anyone access the database for a short period of time(30 days), you will need to refine to rules *later* as needed. 
[Firebase Rules Documentation](https://firebase.google.com/docs/rules/basics)






### Tips for Using/Creating Collections and Documents. 

Before you can add or get data to firebase, you are going to need a `Collection`. 

When your on the `Firestore Database` panel, click on `Start collection` to start creating a collection. 

Give the new collection a name/ID press `next`. 

From there Firebase will force to to add a document before moving on. For now just generate a randomID and press next, you can delete this document later, but there must **ALWAYS** be at least 1 document in a collection, otherwise it will get **Deleted**.






## Heres some handy Firestore Documentation

- [Get Documents From Firebase](https://firebase.google.com/docs/firestore/query-data/get-data#swift_1)
- [Preform Simple and Compound Queries(array of query results)](https://firebase.google.com/docs/firestore/query-data/queries)
- [Add Data to Firebase](https://firebase.google.com/docs/firestore/manage-data/add-data)








## Whats in this Project? 

This project contains 2 main parts, 2 Data setter Examples, and 2 Data getter examples. 
Each access method has 2 examples, 1 basic example, and one advanced example. 


### Getter Examples: 

Basic: 
    Call to firebase to return a specific book with a hard Coded value.
    

Advanced: 
    **Retrive all ** the added travel destinations, then **pick a random one** from the returned array to display its information. 
    
    

### Setter Examples:
    
Basic: 
    Add a favorite book to the database with a *random Document ID*
    
 Advanced: 
    Create a new travel destination **Document** with **4** Fields: `docID`, `placeName`, `placeLocation`, `value`, and then add the new document to firebase with a **DOCID** based on what the user entered for the name. 
        

    

