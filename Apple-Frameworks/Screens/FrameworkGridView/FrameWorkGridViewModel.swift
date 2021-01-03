//
//  FrameWorkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Christian Skorobogatow on 1/1/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true}
    }
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    @Published var isShowingDetailView = false
    
}
