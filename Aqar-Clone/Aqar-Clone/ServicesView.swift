import SwiftUI

struct ServicesView: View {
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
                        
                        ServicesHeaderView(isShowing: $isShowing)
                        
                        LazyVGrid(columns: columns, alignment: .center, spacing: 10) {
                            GridButton(image: Image("aqood"), text: "عقود")
                            GridButton(image: Image("myorders"), text: "طلباتي")
                            GridButton(image: Image("critique"), text: "تقييم عقاري")
                            GridButton(image: Image("orders"), text: "طلبات الشراء")
                            GridButton(image: Image("tamweel"), text: "التمويل العقاري")
                            GridButton(image: Image("raf3"), text: "الرفع المساحي")
                        }
                        .padding()
                    }
                    .frame(maxHeight: 400)
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
    struct ServicesView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

