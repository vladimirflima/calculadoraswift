//
//  ContentView.swift
//  Calculadora iOS
//
//  Created by Vladimir Lima on 08/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ViewControllerRepresentable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
