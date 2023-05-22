import SwiftUI

struct ProfileView: View {
    @State private var isButton1Active = true
       
    @Binding var isShowing: Bool
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        if isShowing {
            ZStack(alignment: .bottom) {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
           
                    
                    ScrollView {
                        
                        ProfileHeaderView(isShowing: $isShowing)
                        ProfileFirstSection()
                        ProfileSecondSection().frame(maxWidth: .infinity)
                    }
                    .frame(maxHeight: 850)
                    .background(Color.white)
                    .cornerRadius(10)
                    .transition(.move(edge: .bottom))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
                .animation(.easeInOut)
                
            }
        }
    }
}
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
