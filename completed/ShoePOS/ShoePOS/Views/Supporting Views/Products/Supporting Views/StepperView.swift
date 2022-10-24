import SwiftUI

struct StepperView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(6)
                .frame(height: 34)
            
            HStack {
                Button(action: {  }) {
                    HStack {
                        Image(systemName: "minus")
                            .font(Font.system(size: 24, weight: .medium))
                            .foregroundColor(.baseLightBlue)
                    }
                    .frame(width: 50, height: 34)
                }
                
                Spacer()
                
                Button(action: { }) { 
                    HStack {
                        Image(systemName: "plus")
                            .font(Font.system(size: 24, weight: .medium))
                            .foregroundColor(.baseLightBlue)
                    }
                    .frame(width: 50, height: 34)
                }
            }
            .frame(height: 34)
            .background(Color.baseLightGrey)
            .cornerRadius(6)
            
            Text("1")
                .font(.custom(.bold, size: 27))
                .foregroundColor(.baseLightBlue)
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView().previewLayout(.sizeThatFits)
    }
}
