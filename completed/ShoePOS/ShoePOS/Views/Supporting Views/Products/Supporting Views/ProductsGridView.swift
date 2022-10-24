import SwiftUI

struct ProductsGridView: View {
    @State var isProductDetailVisible = false
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200), spacing: 10)], spacing: 34) {
                    ForEach(0..<50) { _ in
                        ProductItemView().onTapGesture {
                            isProductDetailVisible.toggle()
                        }
                    }
                }.padding(.top, 20)
                    .padding(.horizontal, 10)
            }
            
            ProductDetail(isVisible: $isProductDetailVisible)
                .opacity(isProductDetailVisible ? 1 : 0)
                .animation(.default, value: isProductDetailVisible)
        }
        .background(Color.baseLightGrey)
    }
}

struct ProductsGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsGridView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
