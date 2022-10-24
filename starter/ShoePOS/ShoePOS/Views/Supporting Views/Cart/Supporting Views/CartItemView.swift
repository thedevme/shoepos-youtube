import SwiftUI

struct CartItemView: View {
    var body: some View {
        Text("Cart Item View")
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView()
            .previewLayout(.fixed(width: 475, height: 125))
    }
}
