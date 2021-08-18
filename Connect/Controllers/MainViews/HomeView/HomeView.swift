//
//  HomeView.swift
//  Connect
//
//  Created by imran malik on 17/08/21.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    @State private var showCreatePostOptions = false
    @State private var createPost = false
    @State private var navigation: NavigationLinks? = nil
    @State private var selectedImage: UIImage = UIImage()

    var body: some View {
        Group {
            List {
                ForEach(viewModel.posts) { post in
                    PostRow(post: post)
                }.listRowInsets(EdgeInsets())
                .listStyle(PlainListStyle())
            }
            .onTapGesture {
                print("Cell tapped")
            }
            .navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        createPost = true
                                    }, label: {
                                        Image(systemName: "plus.app.fill")
                                    })
            )
        }
        .fullScreenCover(isPresented: $createPost) {
            CreatePost(dismiss: $createPost)
        }
    }
/*
    func actionSheet() -> some View {
        Button(action: {
            showCreatePostOptions = true
        }, label: {
            Image(systemName: "plus.app.fill")
        })
        .actionSheet(isPresented: $showCreatePostOptions, content: {
            ActionSheet(title: Text("Create a new Post"), message: Text("Select source"), buttons: [
                    .default(Text("Camera")) {
                        showCamera = true
                    },
                    .default(Text("Gallery")) {
                        showGallery = true
                    },
                    .cancel()
                ])
        })
    }

    func galleryView() -> some View {
        Spacer()
            .sheet(isPresented: $showGallery) {
                PhotoPicker(selectedImage: $selectedImage)
            }
    }
 */
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
