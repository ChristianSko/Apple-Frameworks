//
//  XDissmissButton.swift
//  Apple-Frameworks
//
//  Created by Christian Skorobogatow on 3/1/21.
//

import SwiftUI

struct XDissmissButton: View {
    
    @Binding var ishowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            
            Button {
                ishowingDetailView = false
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

struct XDissmissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDissmissButton(ishowingDetailView: .constant(false))
    }
}
