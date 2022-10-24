import SwiftUI

struct CartItemView: View {
    var body: some View {
        HStack {
            HStack(spacing: 10) {
                VStack(alignment: .leading) {
                    HStack {
                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                            Image("shoe-1")
                                .resizable()
                                .frame(width: 107, height: 57)
                            
                            ZStack {
                                Rectangle()
                                    .fill(Color.baseLightBlue)
                                    .frame(width: 40, height: 30)
                                    .cornerRadius(5, corners: [.topRight, .bottomRight])
                                Text("99")
                                    .font(.custom(.bold, size: 26))
                                    .foregroundColor(.white)
                                    .offset(y: 2)
                            }
                            .offset(y: -10)
                        }
                        
                        Spacer()
                        VStack(alignment: .trailing, spacing: -10) {
                            Text("$999.99")
                                .font(.custom(.bold, size: 36))
                                .foregroundColor(.baseLightBlue)
                                .offset(y: 5)
                            Text("SIZE: 13.5")
                                .font(.custom(.bold, size: 23))
                            
                            Spacer()
                            
                        }.padding(.trailing, 10)
                    }
                    
                    Spacer()
                    
                    Text("AIR JORDAN 11 RETRO 'BRED' 2019")
                        .font(.custom(.regular, size: 18))
                        .frame(maxWidth: .infinity, alignment: .bottomLeading)
                        .padding(.leading)
                        //.lineLimit(2, reservesSpace: true) // if you need multiline
                }
            }

        }.offset(x: 0)
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView()
            .previewLayout(.fixed(width: 475, height: 125))
    }
}
