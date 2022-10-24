import SwiftUI

struct CartContentView: View {
    
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Image(systemName: "person.circle")
                        .foregroundColor(.baseMediumGrey)
                        .font(Font.system(size: 54, weight: .ultraLight))
                    Text("Add Customer")
                        .font(.custom(.medium, size: 18))
                    
                    Spacer()
                    
                    Image(systemName: "plus.circle")
                }
            }
            .frame(height: 58)
            
            Section {
                ForEach(0..<3) { _ in
                    CartItemView()
                }
            }
            .padding(.leading, -15)
            .frame(height: 115)
            
            Section {
                HStack {
                    HStack(spacing: 10) {
                        Text("Subtotal:")
                            .foregroundColor(.baseDarkGrey)
                            .font(.custom(.medium, size: 18))
                    }
                    
                    Spacer()
                    
                    Text("$999.99")
                        .font(.custom(.bold, size: 36))
                        .foregroundColor(.baseLightBlue)
                }
                
                HStack {
                    Text("Add shipping")
                        .font(.custom(.medium, size: 18))
                        .foregroundColor(.baseMediumGrey)
                    
                    Spacer()
                    
                    Button(action: { }) {
                        Image(systemName: "plus.circle")
                            .foregroundColor(.baseMediumGrey)
                    }.buttonStyle(PlainButtonStyle())
                }
                
                VStack(alignment: .leading) {
                    Spacer()
                    
                    HStack {
                        HStack {
                            Text("FL State Tax:")
                                .foregroundColor(.baseDarkGrey)
                                .font(.custom(.medium, size: 18))
                            Text("(6%)")
                                .foregroundColor(.baseMediumGrey)
                        }
                        
                        Spacer()
                        
                        Text("$0.00")
                    }
                    
                    Spacer()
                    
                    HStack {
                        HStack {
                            Text("County Tax:")
                                .foregroundColor(.baseDarkGrey)
                                .font(.custom(.medium, size: 18))
                            Text("(11%)")
                                .foregroundColor(.baseMediumGrey)
                        }
                    }
                    
                    Spacer()
                }.frame(height: 80)
            }
        }
    }
}

struct CartContentView_Previews: PreviewProvider {
    static var previews: some View {
        CartContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
