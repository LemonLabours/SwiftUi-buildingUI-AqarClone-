import SwiftUI

struct ChatsHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 30)
            HStack {
                Spacer()
                    .frame(width: 20)
                Button(action:{}){
                    Image(systemName:"trash.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .tint(Color.AqarGreen)
                    
                }
                Spacer()
                    .frame(width: 160)
                Button(action: {
                    isShowing = false
                }) {
                    Text("المحاداثات")
                        .cairoExtraBold(size: 24)
                        .foregroundColor(Color.AqarGray)
                    Image(systemName: "arrow.right")
                        .cairoBlack(size: 24)
                        .foregroundColor(Color.AqarGreen)
                    Spacer()
                        .frame(width: 20)
                }
            }
            .frame(height: 120)
            .frame(maxWidth: .infinity,maxHeight: 100, alignment: .trailing)
            Divider()
                .shadow(radius: 6)
        }
    }
}
