//
//  HomeViewModel.swift
//  Connect
//
//  Created by imran malik on 18/08/21.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var posts = Mock.posts
    
}
