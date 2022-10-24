import SwiftUI

struct CartView: View {
    var body: some View {
        VStack(spacing: 0) {
            CartHeaderView()
                .border(width: 1, edges: [.top, .bottom], color: .baseLightGrey)
            CartContentView()
            //Spacer()
            CartTotalView()
                .border(width: 1, edges: [.top], color: .baseLightGrey)
                .background(.white)
        }
        .border(width: 1, edges: [.leading], color: .baseLightGrey)
        .frame(width: 417)
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
