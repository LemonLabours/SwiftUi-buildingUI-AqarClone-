import SwiftUI

struct FavoriteHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 30)
            HStack {
                Spacer()
                    .frame(width: 30)
                Button(action:{}){
                    Image("dots")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .tint(Color.AqarGreen)
                    
                }
                Spacer()
                    .frame(width: 200)
                Button(action: {
                    isShowing = false
                }) {
                    Text("المفضلة")
                        .cairoExtraBold(size: 24)
                        .foregroundColor(Color.AqarGray)
                    Image(systemName: "arrow.right")
                        .cairoBlack(size: 24)
                        .foregroundColor(Color.AqarGreen)
                    Spacer()
                }
            }
            .frame(height: 120)
            .frame(maxWidth: .infinity,maxHeight: 100, alignment: .trailing)
            Divider()
                .shadow(radius: 6)
        }  .background(Color.white)
    }
}
