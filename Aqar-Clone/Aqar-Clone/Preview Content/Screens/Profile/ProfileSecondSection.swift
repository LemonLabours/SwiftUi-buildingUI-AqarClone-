import AVFoundation
import AVKit
import SwiftUI
import WebKit

struct ProfileSecondSection: View {
    @State private var isButton1Active = true
    private let videoURL = "https://www.youtube.com/watch?v=EdwoB2rv5eA"
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Button(action: {
                    isButton1Active = true
                }) {
                    Text("الخدمات")
                        .foregroundColor(isButton1Active ? .green : .white)
                        .padding()
                        .cornerRadius(0)
                        .frame(maxWidth: .infinity) // Stretch to full width
                }
                .background(isButton1Active ? Color.white : Color.green)
                
                Button(action: {
                    isButton1Active = false
                }) {
                    Text("الإعلانات")
                        .foregroundColor(isButton1Active ? .white : .green)
                        .padding()
                        .cornerRadius(0)
                        .frame(maxWidth: .infinity) // Stretch to full width
                }
                .background(isButton1Active ? Color.green : Color.white)
            }
            .frame(maxWidth: .infinity)
            
            Spacer()
            
            // Video player using WebView
            WebView(urlString: videoURL)
                .frame(height: 300)
            
            Spacer()
        }
        .frame(height: 400)
        .background(Color.AqarLightGray)
    }
}

struct WebView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: urlString) else {
            return WKWebView()
        }
        let request = URLRequest(url: url)
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: urlString)!))
    }
}
