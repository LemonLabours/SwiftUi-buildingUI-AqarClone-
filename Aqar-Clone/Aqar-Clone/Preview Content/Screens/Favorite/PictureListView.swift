import SwiftUI
struct PictureListView: View {
    let pictureNames: [String] = ["F1", "F2", "F1", "F2" , "F1", "F2", "F1", "F2" , "F1", "F2"]

    var body: some View {
        HStack{
            Spacer()
                .frame(width: 10)
            GeometryReader { geometry in
                ScrollView(.horizontal) {
                    VStack(spacing: 0) {
                        ForEach(pictureNames, id: \.self) { pictureName in
                            NavigationLink(destination: AqarView()) {
                                Image(pictureName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width, height: 180)
                                    .padding()
                            }
                        }
                    }
                }
            }
            Spacer()
                .frame(width: 30)
        }

    }
}






