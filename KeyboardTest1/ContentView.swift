import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("General > Keyboard > Keyboards > Add Keyboard")
                .foregroundColor(Color.gray)
                .font(.system(size: 12))
                .padding()
            
            
            Button(action: {
                
                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!, options: [:], completionHandler: nil)
                
            }) { Text("Setup Keyboard")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.purple)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
