//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Gabriel Ramos on 01/01/26.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    // initializing a brand new VM we use StateObject
    //    injecting it (like when we initialize our framework grid view, we initialize it with a view model then we are going
    //    go use observed Object
    
    // flexible -> Dependiendo de cuantas cols is going to fill that space
    //    ViewModel
    //    let columns: [GridItem]=[GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())] // 3 columnas (3 x 3)
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    // iterar thru array
                    //            \.self -> asigna el id en automatico a c/u
                    //            ForEach(MockData.frameworks, id: \.self) {
                    ForEach(MockData.frameworks) {
                        //                framework in FrameworkTitleView(imageName: framework.imageName, name: framework.name)
                        
                        framework in NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                        //                            .onTapGesture {
                        //                                viewModel.selectedFramework = framework
                        //                            }
                    }
                }
                
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self){
                framework in FrameworkDetailView(framework: framework)  
            }
            //            .sheet(isPresented: $viewModel.isShowingDetailView){
            //                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            //            }
        }
    }
}

#Preview {
    FrameworkGridView()
}



