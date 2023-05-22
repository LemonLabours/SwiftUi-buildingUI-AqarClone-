import SwiftUI
import UIKit

struct ProfileFirstSection: View {
    @State private var isShowingImagePicker = false
    @State private var selectedImage: UIImage? = nil
    
    var body: some View {
        VStack(spacing: 16) {
            Spacer()
                .frame(height: 30)
            
            Button(action: {
                isShowingImagePicker = true
            }) {
                if let image = selectedImage {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color.AqarGray)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.bottom, 8)
                } else {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color.AqarGray)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.bottom, 8)
                }
            }
            
            Text("اسم المستخدم")
                .cairoExtraBold(size: 20)
            
            Image("profileinfo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 130)
        }
        .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage) {
            ImagePicker(selectedImage: $selectedImage)
        }
    }
    
    private func loadImage() {
        // Handle the selected image here
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) private var presentationMode
    @Binding var selectedImage: UIImage?
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
