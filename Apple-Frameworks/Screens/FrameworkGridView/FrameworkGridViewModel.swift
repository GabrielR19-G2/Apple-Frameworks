//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Gabriel Ramos on 04/01/26.
//

import SwiftUI
import Combine

// hold state
// allows is for our object to publish information



final class FrameworkGridViewModel: ObservableObject{
    // optional (1st we dont have a framework selected
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
//            cuando se selecciona un framework, isShowingDetailView va a cambiar y por ende cambia the source of truth   
        }
    }
    @Published var isShowingDetailView = false
    let columns: [GridItem]=[GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())] 
    
//    init(selectedFramework: Framework? = nil, isShowingDetailView: Bool = false) {
//        self.selectedFramework = selectedFramework
//        self.isShowingDetailView = isShowingDetailView
//    }
}
