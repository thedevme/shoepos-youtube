import SwiftUI

struct CartHeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("CART (0)")
                .font(.custom(.demi, size: 24))
            Spacer()
            Image(systemName: "trash")
                .font(Font.system(size: 24, weight: .thin))
        }
        .padding(.horizontal, 15)
        .frame(height: 60)
        .background(Color.white)
        .offset(x: -1)
    }
}

struct CartHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CartHeaderView().previewLayout(.sizeThatFits)
    }
}
