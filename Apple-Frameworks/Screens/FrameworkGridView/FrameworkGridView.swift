//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Christian Skorobogatow on 22/12/20.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, ishowingDetailView: $viewModel.isShowingDetailView)) {
                    
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


