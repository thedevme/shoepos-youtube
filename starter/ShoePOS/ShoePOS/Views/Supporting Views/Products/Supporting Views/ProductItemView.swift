import SwiftUI

struct ProductItemView: View {
    var body: some View {
        Text("Product Item View")
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.baseLightGrey.edgesIgnoringSafeArea(.all)
            ProductItemView()
        }
        .previewLayout(.fixed(width: 300, height: 200))
    }
}
