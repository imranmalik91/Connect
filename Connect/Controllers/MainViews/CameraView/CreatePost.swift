//
//  CreatePost.swift
//  Connect
//
//  Created by imran malik on 18/08/21.
//

import SwiftUI

struct CreatePost: View {
    @State var title = ""
    @State var description = ""
    private let width = UIScreen.main.bounds.size.width
    @State private var showGallery = false
    @State private var showCamera = false
    @State private var showCreatePostOptions = false
    @Binding var dismiss: Bool
    @State private var selectedImage = UIImage(named: "placeholder")!

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                postImage
                titleField
                Spacer()
            }
            .navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Text("Create")
                                    .onTapGesture {
                                        onCreateTap()
                                    }
            )
            .sheet(isPresented: $showGallery, content: {
                PhotoPicker(selectedImage: $selectedImage)
            })
        }
    }


    private var postImage: some View {
        Image(uiImage: selectedImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width:  width, height: width.calculateHeight(), alignment: .center)
            .clipped()
            .onTapGesture {
                showCreatePostOptions = true
            }
            .actionSheet(isPresented: $showCreatePostOptions, content: {
                ActionSheet(title: Text("Create a new Post"), message: Text("Select source"), buttons: [
                        .default(Text("Camera")) {
                            showCamera = true
                            showCreatePostOptions = false
                        },
                        .default(Text("Gallery")) {
                            showGallery = true
                            showCreatePostOptions = false
                        },
                        .cancel()
                    ])
            })
    }

    private var titleField: some View {
        TextFieldView(field: $title, fontSize: 18, placeholder: "Title")
            .frame(width: abs(width - Spacing.defaultPadding * 2), height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.leading, Spacing.defaultPadding)
            .padding(.top, 10)
    }

    private func onCreateTap() {
        dismiss = false
    }
}

struct CreatePost_Previews: PreviewProvider {
    @State static var dismiss = false
    static var previews: some View {
        CreatePost(dismiss: $dismiss)
    }
}
