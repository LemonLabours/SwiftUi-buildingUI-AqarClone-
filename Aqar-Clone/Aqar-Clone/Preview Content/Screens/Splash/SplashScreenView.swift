import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var scale: CGFloat = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        Group {
            if isActive {
                ContentView()
                    .transition(.opacity)
            } else {
                
                ZStack {
   
                    
                    VStack(spacing: 0) {
                        Spacer()
                        Image("AqarLogoH-colored")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .scaleEffect(scale)
                            .animation(.easeInOut(duration: 1.2))
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)

                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            scale = 0.9
                            opacity = 1.0
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            withAnimation(.easeOut(duration: 0.6)) {
                                opacity = 0.0
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                isActive = true
                            }
                        }
                    }
                }
                .opacity(opacity)
            }
        }
    }
}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
