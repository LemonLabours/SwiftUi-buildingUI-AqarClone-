import SwiftUI

struct ServicesHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    isShowing = false
                }) {
                    Text("الخدمات")
                        .cairoExtraBold(size: 24)
                        .foregroundColor(Color.AqarGray)
                    Image(systemName: "arrow.right")
                        .cairoExtraBold(size: 24)
                        .foregroundColor(Color.AqarGray)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .trailing)
            Divider()
        }
    }
}





