import SwiftUI

struct ProductItemView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .foregroundColor(Color.white)
                .frame(minWidth: 200)
                .frame(height: 168)
                .cornerRadius(10)
            
            VStack(spacing: 0) {
                Image("shoe-1")
                    .resizable()
                    .frame(width: 188, height: 100)
                VStack(spacing: -4) {
                    Text("AIR JORDAN 11 RETRO 'BRED' 2019")
                        .font(.custom(.demi, size: 18))
                    Text("$325")
                        .foregroundColor(.baseLightBlue)
                        .font(.custom(.bold, size: 29))
                    
                    ShoePOSButton(title: "SELECT")
                }.padding(.bottom, 20)
                    .padding(.horizontal, 5)
            }
            .frame(height: 185)
            .padding(.horizontal, 5)
            .background(Color.clear)
        }
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
