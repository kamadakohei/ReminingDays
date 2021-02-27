//
//  ContentView.swift
//  RemainingDays
//
//  Created by 釜田康平 on 2021/02/23.
//

import SwiftUI
    


struct ContentView: View {
    @State var name: String  = ""
    
    var body: some View {
        VStack{
            Text("受験日は？")
            TextField("○月○日", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 250)
            
            // tes9
            if (!name.isEmpty) {
                Text("\(name)さん、こんにちは！")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
