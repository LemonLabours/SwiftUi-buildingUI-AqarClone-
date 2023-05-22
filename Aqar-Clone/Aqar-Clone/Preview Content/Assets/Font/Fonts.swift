import SwiftUI

extension View {
    func cairoRegular(size: CGFloat) -> some View {
        self.modifier(AppFontModifier(size: size))
    }
}

struct AppFontModifier: ViewModifier {
    let size: CGFloat
    
    init(size: CGFloat = 16) {
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content
            .font(.custom("Cairo", size: size)) // Set your desired font name and size
    }
}

//------------------------------------------------

extension View {
    func cairoExtraBold(size: CGFloat) -> some View {
        self.modifier(AppFontModifierExtraBold(size: size))
    }
}

struct AppFontModifierExtraBold: ViewModifier {
    let size: CGFloat
    
    init(size: CGFloat = 16) {
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content
            .font(.custom("Cairo-Regular_ExtraBold", size: size)) // Set your desired font name and size
    }
}

//------------------------------------------------

extension View {
    func cairoExtraLight(size: CGFloat) -> some View {
        self.modifier(AppFontModifierExtraLight(size: size))
    }
}

struct AppFontModifierExtraLight: ViewModifier {
    let size: CGFloat
    
    init(size: CGFloat = 16) {
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content
            .font(.custom("Cairo-Regular_ExtraLight", size: size)) // Set your desired font name and size
    }
}

//------------------------------------------------
extension View {
    func cairoLight(size: CGFloat) -> some View {
        self.modifier(AppFontModifierExtraLight(size: size))
    }
}

struct AppFontModifierLight: ViewModifier {
    let size: CGFloat
    
    init(size: CGFloat = 16) {
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content
            .font(.custom("Cairo-Regular_Light", size: size)) // Set your desired font name and size
    }
}

//------------------------------------------------
extension View {
    func cairoSemiBold(size: CGFloat) -> some View {
        self.modifier(AppFontModifierExtraLight(size: size))
    }
}

struct AppFontModifierSemiBold: ViewModifier {
    let size: CGFloat
    
    init(size: CGFloat = 16) {
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content
            .font(.custom("Cairo-Regular_SemiBold", size: size)) // Set your desired font name and size
    }
}


//------------------------------------------------
extension View {
    func cairoBold(size: CGFloat) -> some View {
        self.modifier(AppFontModifierExtraLight(size: size))
    }
}

struct AppFontModifierBold: ViewModifier {
    let size: CGFloat
    
    init(size: CGFloat = 16) {
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content
            .font(.custom("Cairo-Regular_Bold", size: size)) // Set your desired font name and size
    }
}
//------------------------------------------------
extension View {
    func cairoBlack(size: CGFloat) -> some View {
        self.modifier(AppFontModifierExtraLight(size: size))
    }
}

struct AppFontModifierBlack: ViewModifier {
    let size: CGFloat
    
    init(size: CGFloat = 16) {
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content
            .font(.custom("Cairo-Regular_Black", size: size)) // Set your desired font name and size
    }
}

