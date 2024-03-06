//
//  SettersExamplesView.swift
//  SwiftUI_Firebase_MVVM_Implementation_Demos_2024
//
//  Created by Devin Grischow on 3/4/24.
//

import SwiftUI

//Setters Example Ideas:

//Add A Document To firebae through a set ID, the books name but no spaces AND all lowercase (simulate addinga  new book to a library,
//Enter A Book title, and just enter that book title in, and in firebase do it as "Favroite Book"

//For The Advanced, tie it to the getter Example. Add a New document called "Travel-wishes", and add a persons dream travel spot to firebase with a randomID

struct SettersExamplesView: View {
    
    //State Object For the Views View Model
    @StateObject var viewModel = SettersViewModel() 
    
    var body: some View {
        BasicSetterExampleView()
        
        AdvancedSettersExampleView()
    }
}

#Preview {
    SettersExamplesView()
}
