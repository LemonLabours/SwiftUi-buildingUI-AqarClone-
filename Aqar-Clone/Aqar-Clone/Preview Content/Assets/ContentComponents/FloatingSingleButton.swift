import SwiftUI

struct SystemImageButton: View {
    let imageName: String
    
    var body: some View {
        Button(action: {
            // Handle button action here
            print("Button tapped")
        }) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
        }
        .frame(width: 50, height: 50)
        .background(Color.white.cornerRadius(10))
    }
}
//---------------------------------
struct ImageButton: View {
    let imageName: String
    
    var body: some View {
        Button(action: {
            // Handle button action here
            print("Button tapped")
        }) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
        }
        .frame(width: 50, height: 50)
        .background(Color.white.cornerRadius(10))
    }
}
//------------------------------------
struct MiddleImageButton: View {
    let imageName: String
    
    var body: some View {
        Button(action: {
            // Handle button action here
            print("Button tapped")
        }) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 230, height: 130)
        }
        .frame(width: 240, height: 50)
        .background(Color.white.cornerRadius(10))
    }
}
//-----------------------------------
struct LevelTwoFloatingButtons: View {
    var body: some View {
        HStack(spacing: 16) {
            Spacer()
            ImageButton(imageName: "Stc-logo")
            MiddleImageButton(imageName: "middle")
            SystemImageButton(imageName: "magnifyingglass")
            Spacer()
        }
    }
}
//-----------------------------------
struct VerticalFloatingButtons: View {
    var body: some View {
        VStack{
            ImageButton(imageName: "snb-logo")
            Spacer()
                .frame(height: 350)
            ImageButton(imageName: "tasks")
            ImageButton(imageName: "ruler")
        }.padding(.top,130)
    }
}
//-------------------------------------------
struct SystemMapButton: View {
    let imageName: String
    
    var body: some View {
        Button(action: {
            // Handle button action here
            print("Button tapped")
        }) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(10)
                .foregroundColor(Color.AqarGray)
                .background(Color.white)
                .clipShape(Circle())
        }
        .frame(width: 50, height: 50)
    }
}
//------------------------------
struct VerticalMapButtons: View {
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 350)
            SystemMapButton(imageName: "antenna.radiowaves.left.and.right")
            SystemMapButton(imageName: "list.bullet")
            SystemMapButton(imageName: "scope")
        }.padding(.top,130)
    }
}
