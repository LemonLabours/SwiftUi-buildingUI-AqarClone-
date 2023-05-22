import SwiftUI


struct AllTheFloatingButtons: View {
    @State private var selectedButton: String?
    let buttonTitles = ["عمارة للبيع"
                        ,"شقة للبيع"
                        ,"دور للإيجار"
                        , "فيلا للإيجار"
                        , " ارض للبيع "
                        , " فيلا   للبيع "]
    var body: some View {
        ZStack{
            MapView()
            FloatingHeaderButtonView(buttonTitles: buttonTitles, selectedButton: $selectedButton).padding(.bottom, 620)
            LevelTwoFloatingButtons().padding(.bottom, 460)
            HStack{
                VerticalFloatingButtons()
                Spacer()
                    .frame(width: 272)
                VerticalMapButtons()
            }
        
            
        }
    }
}
