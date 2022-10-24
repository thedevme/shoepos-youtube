import SwiftUI

struct ProductDetail: View {
    @Binding var isVisible: Bool
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            ZStack {
                VStack(spacing: 0) {
                    header
                    content
                    // contentv2 // Demo purposes: showing both grids
                }
            }
            .background(Color.baseDarkGrey)
            .cornerRadius(15)
            .padding(.horizontal, 38)
            .padding(.top, 50)
            .padding(.bottom, 50)
            
            closeBtn.offset(x: -12, y: 30)
        }
        .background(.ultraThinMaterial)
    }
    
    var closeBtn: some View {
        ZStack {
            Circle().fill(Color.white).frame(width: 45, height: 45)
            Button(action: { isVisible.toggle() }) {
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 45, weight: .heavy))
            }.buttonStyle(PlainButtonStyle())
        }
    }
    
    var content: some View {
        ScrollView(showsIndicators: false) {
            Grid(horizontalSpacing: 15, verticalSpacing: 10) {
                ForEach(0..<10) { row in
                    GridRow {
                        ForEach(0..<3) { col in
                            GridRow {
                                SizeCartItemView(index: col)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
    
    var contentv2: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 156), spacing: 15)], spacing: 15) {
                ForEach(0..<29, id: \.self) { col in
                    SizeCartItemView(index: col)
                }
            }
            .padding(10)
        }
    }
    
    var header: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).fill(Color.white)
                .frame(height: 120)
                .frame(minWidth: 0, maxWidth: .infinity)
                .cornerRadius(10)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("AIR JORDAN 11 RETRO 'BRED' 2019")
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .font(.custom(.demi, size: 34))
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("STYLE:")
                            .font(.custom(.bold, size: 12))
                        Text("CJ9999-001")
                            .font(.custom(.bold, size: 18))
                    }
                }
                .padding(.leading)
                .frame(height: 120)
                
                Spacer()
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center)) {
                    Image("shoe-1")
                        .resizable()
                        .frame(width: 310, height: 164)
                        .offset(y: -20)
                    
                    
                    Text("$999.99")
                        .padding(6)
                        .background(Color.baseLightBlue)
                        .foregroundColor(.white)
                        .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                        .font(.custom(.bold, size: 24))
                }
            }
        }
        .frame(height: 120)
        .padding(.horizontal, 15)
        .padding(.top, 65)
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.baseLightBlue
            ProductDetail(isVisible: .constant(false))
        }
        .previewInterfaceOrientation(.landscapeLeft)
    }
}
