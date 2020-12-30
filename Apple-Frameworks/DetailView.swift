//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Christian Skorobogatow on 29/12/20.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                        
                }
            }
            .padding()
            
            FrameworkTitleView(framework: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
