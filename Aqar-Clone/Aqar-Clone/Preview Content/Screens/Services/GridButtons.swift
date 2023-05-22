import SwiftUI

struct GridButton: View {
    let image: Image
    let text: String
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.AqarLightGray)
                .frame(width: 100, height: 100)
                .shadow(radius: 4)
                .cornerRadius(10)
                .overlay(
                    VStack(alignment: .center, spacing: -15) {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .padding(.all,10)
                        
                        Text(text)
                            .cairoRegular(size: 12)
                            .foregroundColor(.primary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                            .lineLimit(2)
                    }
                )
        }
    }
}
