import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: -5) {
            ProductsView()
            Spacer()
            CartView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
