//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Christian Skorobogatow on 29/12/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var ishowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView.toggle()
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, ishowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
