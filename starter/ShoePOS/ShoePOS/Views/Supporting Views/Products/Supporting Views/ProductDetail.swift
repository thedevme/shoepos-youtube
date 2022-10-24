import SwiftUI

struct ProductDetail: View {
    var body: some View {
        Text("Product Detail View")
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.baseLightBlue
            ProductDetail()
        }
        .previewInterfaceOrientation(.landscapeLeft)
    }
}
