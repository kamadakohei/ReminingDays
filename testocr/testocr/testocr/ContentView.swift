//
//  ContentView.swift
//  testocr
//
//  Created by 釜田康平 on 2021/02/09.
//

import SwiftUI
import SwiftyTesseract

struct ContentView: View {
    var body: some View {
        Button(action: {
            
            let swiftyTesseract = SwiftyTesseract(language: RecognitionLanguage.japanese)

                override func viewDidLoad() {
                    super.viewDidLoad()

                    let start = Date()

                    let fileName = "sample.png"
                    guard let image = UIImage(named: fileName) else { return }

                    swiftyTesseract.performOCR(on: image) { recognizedString in
                        guard let text = recognizedString else { return }
                        print("\(text)")

                        print("\(-start.timeIntervalSinceNow)")
                    }
                }
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
