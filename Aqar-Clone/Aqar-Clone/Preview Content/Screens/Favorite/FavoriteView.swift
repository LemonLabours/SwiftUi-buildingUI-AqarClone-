import SwiftUI
struct FavoriteView: View {
    @Binding var isShowing: Bool

    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                FavoriteHeaderView(isShowing: $isShowing)
                
                ScrollView {

                    PictureListView()
                       
                }
                .background(Color.AqarLightGray)
                .cornerRadius(10)
                .transition(.move(edge: .bottom))
                .navigationTitle("Pictures")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
            .animation(.easeInOut)
            
        }
    }
}

struct FavoriteView_Pre: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

