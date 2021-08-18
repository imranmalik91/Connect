//
//  PhotoPicker.swift
//  Connect
//
//  Created by imran malik on 18/08/21.
//

import UIKit
import SwiftUI

struct PhotoPicker: UIViewControllerRepresentable {

    @Binding var selectedImage: UIImage

    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }

    func makeCoordinator() -> Coordinator {
        Coordinator(photoPicker: self)
    }
}

final class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    let photoPicker: PhotoPicker

    init(photoPicker: PhotoPicker) {
        self.photoPicker = photoPicker
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.editedImage] as? UIImage {
            self.photoPicker.selectedImage = image
        }
        picker.dismiss(animated: true)
    }
}
