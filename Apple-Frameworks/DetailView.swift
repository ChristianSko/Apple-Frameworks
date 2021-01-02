//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Christian Skorobogatow on 29/12/20.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    @Binding var ishowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
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
        DetailView(framework: MockData.sampleFramework, ishowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
