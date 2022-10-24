import SwiftUI

struct CartTotalView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.baseLightBlue)
                .frame(height: 70)
            
            HStack {
                Text("Total:")
                    .foregroundColor(.white)
                    .font(.custom(.demi, size: 28))
                Spacer()
                Text("$9999.99")
                    .foregroundColor(.white)
                    .font(.custom(.bold, size: 47))
            }
            .padding(.horizontal)
        }
        .padding(.top, 15)
        .padding(.horizontal)
    }
}

struct CartTotalView_Previews: PreviewProvider {
    static var previews: some View {
        CartTotalView().previewLayout(.sizeThatFits)
    }
}
