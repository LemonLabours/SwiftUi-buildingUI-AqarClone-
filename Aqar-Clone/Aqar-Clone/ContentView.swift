import SwiftUI

struct ContentView: View {
    @State private var showServices = false
    @State private var selectedButton: String?
    @State private var showProfileView = false
    @State private var showFavoriteView = false
    @State private var showChatView = false
    var body: some View {
        ZStack {
            VStack {
                AllTheFloatingButtons()
                HStack {
                    TabBarButton(imageName: "square.grid.3x3.fill", text: "الخدمات") {
                        showServices = true
                    }
                    TabBarButton(imageName: "text.bubble.fill", text: "المحادثات") {
                        showChatView = true
                    }

                    TabBarMiddleIcon()

                    TabBarButton(imageName: "heart.fill", text: "المفضلة") {
                        showFavoriteView = true
                    }

                    TabBarButton(imageName: "person.circle.fill", text: "حسابي") {
                        showProfileView = true
                    }
                }
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: -3)
                .frame(height: UIScreen.main.bounds.height / 15)
                .frame(maxWidth: .infinity)
  
            }
            
            if showServices {
                ServicesView(isShowing: $showServices)
            }
            
            if showProfileView {
                ProfileView(    isShowing: $showProfileView)
            }
            if showFavoriteView {
                FavoriteView(    isShowing: $showFavoriteView)
            }
            if showChatView {
                ChatsView(    isShowing: $showChatView)
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
