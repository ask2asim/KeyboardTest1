import SwiftUI

class KeyboardViewController: UIInputViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = UIHostingController(rootView: MyKeyButtons())
        vc.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(vc.view)
    }
}


struct MyKeyButtons: View {
    
    let data: [String] = ["A", "B", "C"]
    var body: some View {
        HStack {
            ForEach(data, id: \.self) { aData in
                
                Button(action: {
                    print("button pressed!") // Not working!
                }) {
                    Text(aData).fontWeight(.bold).font(.title)
                        .foregroundColor(.white).padding()
                        .background(Color.purple)
                }
            }
        }
    }
}
