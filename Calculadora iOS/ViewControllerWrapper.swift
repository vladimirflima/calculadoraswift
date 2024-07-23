//
//  ViewControllerWrapper.swift
//  Calculadora iOS
//
//  Created by Vladimir Lima on 23/07/24.
//

import SwiftUI
import UIKit

struct ViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
    
    class Coordinator: NSObject {
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
}

struct ContentView: View {
    var body: some View {
        ViewControllerWrapper()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
