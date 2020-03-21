//
//  ContentView.swift
//  KeyboardTest1
//
//  Created by Asim Das on 21/3/20.
//  Copyright © 2020 Asim Das. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button(action: {
                
                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!, options: [:], completionHandler: nil)
                
            }) {
                Text("Set Keyboard First")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.purple)
            }
            
            
            Text("General > Keyboard > Keyboards > Add Keyboard")
                .foregroundColor(Color.purple)
                .padding()
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
