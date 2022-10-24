import SwiftUI

struct ProductsView: View {
    var body: some View {
        VStack(spacing: 0) {
            ProductsHeaderView()
//            Spacer() // delete after adding products
            ProductsGridView()
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
