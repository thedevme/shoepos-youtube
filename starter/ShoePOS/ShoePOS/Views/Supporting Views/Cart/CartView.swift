import SwiftUI

struct CartView: View {
    var body: some View {
        Text("Cart View")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Spacer()
            CartView()
        }
        .previewInterfaceOrientation(.landscapeLeft)
    }
}
