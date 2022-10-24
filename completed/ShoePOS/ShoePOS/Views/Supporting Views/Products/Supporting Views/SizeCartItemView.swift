import SwiftUI

struct SizeCartItemView: View {
    var index: Int
    
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                HStack {
                    HStack(spacing: -6) {
                        Text("SIZE")
                            .rotationEffect(.degrees(-90))
                            .font(.custom(.demi, size: 18))
                        
                        Text("13.0")
                            .font(.custom(.bold, size: 40))
                    }.offset(x: -5)
                    
                    Spacer()
                    
                    VStack(spacing: -8) {
                        Text("99")
                            .font(.custom(.bold, size: 27))
                            .foregroundColor(.baseLightBlue)
                        
                        Text("QTY")
                            .font(.custom(.demi, size: 12))
                    }
                }
                
                if index % 2 == 0 {
                    ShoePOSButton(title: "ADD TO CART")
                } else {
                    StepperView()
                }
                
                Spacer()
            }
        }
        .frame(height: 100)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct SizeCartItemView_Previews: PreviewProvider {
    static var previews: some View {
        SizeCartItemView(index: 1)
            .previewLayout(.sizeThatFits)
    }
}
