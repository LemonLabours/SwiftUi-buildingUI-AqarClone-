
import SwiftUI

struct TabBarButton: View {
    let imageName: String
    let text: String
    let action: () -> Void // Closure property for the action
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: -1) {
                Button(action: action) { // Use the action closure as the action for the button
                    Image(systemName: imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.AqarGray)
                }
                .padding(.top, (geometry.size.height - 60) / 2) // Calculate the dynamic padding
                Text(text).cairoLight(size: 14)
            }
        }
    }
}

//---------------------------------------------------------------------------

struct TabBarMiddleIcon: View {
    
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(Color.white)
                .frame(width: 65, height: 65)
            
            Image(systemName: "plus.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75)
                .foregroundColor(Color.AqarGreen)
        }.offset(y: -22)
    }
}

//---------------------------------------------------------------------------
