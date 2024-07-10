//
//  Calculadora_iOSTests.swift
//  Calculadora iOSTests
//
//  Created by Vladimir Lima on 08/07/24.
//

import XCTest
@testable import Calculadora_iOS

class Calculadora_iOSTests: XCTestCase {

    var viewController: ViewController!

    override func setUpWithError() throws {
        // Coloque o código de configuração aqui. Este método é chamado antes da invocação de cada método de teste na classe.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        viewController.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Coloque o código de limpeza aqui. Este método é chamado após a invocação de cada método de teste na classe.
        viewController = nil
    }

    func testAddition() throws {
        // Testando adição
        viewController.currentNumber = 3
        viewController.previousNumber = 2
        viewController.operation = 15 // Tag for addition
        viewController.buttons(UIButton()) // Simulando o clique no botão "="

        XCTAssertEqual(viewController.displayLabel.text, "5")
    }

    func testSubtraction() throws {
        // Testando subtração
        viewController.currentNumber = 3
        viewController.previousNumber = 2
        viewController.operation = 14 // Tag for subtraction
        viewController.buttons(UIButton()) // Simulando o clique no botão "="

        XCTAssertEqual(viewController.displayLabel.text, "1")
    }

    func testMultiplication() throws {
        // Testando multiplicação
        viewController.currentNumber = 3
        viewController.previousNumber = 2
        viewController.operation = 13 // Tag for multiplication
        viewController.buttons(UIButton()) // Simulando o clique no botão "="

        XCTAssertEqual(viewController.displayLabel.text, "6")
    }

    func testDivision() throws {
        // Testando divisão
        viewController.currentNumber = 3
        viewController.previousNumber = 6
        viewController.operation = 12 // Tag for division
        viewController.buttons(UIButton()) // Simulando o clique no botão "="

        XCTAssertEqual(viewController.displayLabel.text, "2")
    }

    func testClear() throws {
        // Testando clear
        viewController.displayLabel.text = "123"
        viewController.buttons(UIButton()) // Simulando o clique no botão "C" (tag 11)

        XCTAssertEqual(viewController.displayLabel.text, "")
    }
}
