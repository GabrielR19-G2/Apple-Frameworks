//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Gabriel Ramos on 11/01/26.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            
            Button{
                // dismiss
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                    
            }
        }
        .padding()
    }
}


#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
