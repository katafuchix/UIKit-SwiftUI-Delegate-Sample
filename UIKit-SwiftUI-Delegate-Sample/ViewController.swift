//
//  ViewController.swift
//  UIKit-SwiftUI-Delegate-Sample
//
//  Created by cano on 2022/06/17.
//

import UIKit
import SwiftUI

// プロトコル定義
protocol MySwiftUIViewDelegate{
    func buttonPressed()
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // SwiftUIで作成したUI部品を画面に追加
        let configuration = MySwiftUIView.Configuration()
        // 委任先をViewControllerに
        configuration.delegate = self
        let mySwiftView = MySwiftUIView(configuration: configuration)
        let vc: UIHostingController = UIHostingController(rootView: mySwiftView)
        view.addSubview(vc.view)
        
        // frameを決める
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        vc.view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        vc.view.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16).isActive = true
        vc.view.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -16).isActive = true
        vc.view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

}

// デリゲートを実装
extension ViewController: MySwiftUIViewDelegate {
    
    func buttonPressed() {
        print("Button Pressed.")
    }
    
}
