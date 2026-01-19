//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Gabriel Ramos on 11/01/26.
//

import SwiftUI

struct FrameworkTitleView: View {
    
//    let imageName: String
//    let name: String
    let framework: Framework
    
    var body: some View{
        VStack{
    //            tenemos la imagen en assets.xcassets, por eso nomas ponemos el nombre
    //        Image("app-clip")
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
    //        Text("App Clips")
//            Text(name)
            Text(framework.name)
                .font(.title2) //title2 -> esto respeta la configuracion q tenga el user en su telefono
                .fontWeight(.semibold)
                .foregroundStyle(Color(.label))
                .scaledToFit() // ability to shrink
                .minimumScaleFactor(0.5) // smallest that it will go -> 50%
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
