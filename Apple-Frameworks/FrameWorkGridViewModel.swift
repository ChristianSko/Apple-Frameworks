//
//  FrameWorkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Christian Skorobogatow on 1/1/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
    
}
