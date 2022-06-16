//
//  MySwiftUIView.swift
//  UIKit-SwiftUI-Delegate-Sample
//
//  Created by cano on 2022/06/17.
//

import SwiftUI

struct MySwiftUIView: View {
    
    // Configuration を内部に持つ
    let configuration: Configuration
    
    var body: some View {
        Button(action: {
            // delegateのメソッドを実行
            configuration.delegate?.buttonPressed()
        }) {
            Text("My button")
        }
    }
}

// delegate の宣言
// Configurationクラス内で行う
extension MySwiftUIView {
    final class Configuration {
        var delegate: MySwiftUIViewDelegate?
    }
}

struct MySwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        let configuration = MySwiftUIView.Configuration()
        MySwiftUIView(configuration: configuration)
    }
}
