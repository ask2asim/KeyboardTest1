import SwiftUI

class KeyboardViewController: UIInputViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = UIHostingController(rootView: MyKeyButtons())
        vc.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(vc.view)
    }
    

    func keyPressed() {
        //print("test--- clicked! ")
        //textDocumentProxy.insertText("a")
        (textDocumentProxy as UIKeyInput).insertText("a")
    }
}


struct MyKeyButtons: View {
    
    let data: [String] = ["A", "B", "C"]
    var body: some View {
        HStack {
            ForEach(data, id: \.self) { aData in
                
                Button(action: {
                    //keyPressed()
                    print("button pressed!")
                    
                }) {
                    Text(aData).fontWeight(.bold).font(.title)
                        .foregroundColor(.white).padding()
                        .background(Color.purple)
                }
            }
        }
    }
}
