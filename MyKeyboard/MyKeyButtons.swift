import SwiftUI

struct MyKeyButtons: View {
    
    let data: [String] = ["A", "B", "C"]
    var body: some View {
        HStack {
            ForEach(data, id: \.self) { aData in
                
                Button(action: {
                    KeyboardViewController().keyPressed()
                    
                }) {
                    Text(aData)
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.purple)
                        .padding()
                        .border(Color.purple, width: 5)
                }
            }
        }
    }
}
