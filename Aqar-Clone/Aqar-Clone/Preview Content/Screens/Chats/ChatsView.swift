import SwiftUI

struct ChatsView: View {

       
    @Binding var isShowing: Bool
    
    var body: some View {
        if isShowing {
            ZStack(alignment: .bottom) {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
          
                    ScrollView{
                        ChatsHeaderView(isShowing: $isShowing)
                        
                       
                    }
                    .frame(maxHeight: 950)
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
    struct ChatsView_Pre: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
