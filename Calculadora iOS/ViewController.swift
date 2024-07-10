import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!

    var currentNumber: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0

    @IBAction func numbers(_ sender: UIButton) {
        if performingMath {
            displayLabel.text = String(sender.tag)
            currentNumber = Double(displayLabel.text!)!
            performingMath = false
        } else {
            displayLabel.text = displayLabel.text! + String(sender.tag)
            currentNumber = Double(displayLabel.text!)!
        }
    }

    @IBAction func buttons(_ sender: UIButton) {
        if displayLabel.text != "" && sender.tag != 11 && sender.tag != 16 {
            previousNumber = Double(displayLabel.text!)!

            if sender.tag == 12 { // Divide
                displayLabel.text = "/";
            } else if sender.tag == 13 { // Multiply
                displayLabel.text = "x";
            } else if sender.tag == 14 { // Subtract
                displayLabel.text = "-";
            } else if sender.tag == 15 { // Add
                displayLabel.text = "+";
            }

            operation = sender.tag
            performingMath = true;
        } else if sender.tag == 16 {
            if operation == 12 { // Divide
                displayLabel.text = String(previousNumber / currentNumber)
            } else if operation == 13 { // Multiply
                displayLabel.text = String(previousNumber * currentNumber)
            } else if operation == 14 { // Subtract
                displayLabel.text = String(previousNumber - currentNumber)
            } else if operation == 15 { // Add
                displayLabel.text = String(previousNumber + currentNumber)
            }
        } else if sender.tag == 11 {
            displayLabel.text = ""
            previousNumber = 0
            currentNumber = 0
            operation = 0
        }
    }
}
