//
//  ViewController.swift
//  Kadai3
//
//  Created by Rin on 2021/07/31.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    @IBOutlet private weak var num1Label: UILabel!
    @IBOutlet private weak var num2Label: UILabel!
    @IBOutlet private weak var resultCalculationLabel: UILabel!

    @IBAction private func didTapButton(_ sender: UIButton) {
        let num1 = Double(textField1.text ?? "") ?? 0
        let num2 = Double(textField2.text ?? "") ?? 0
        let matchedSignNum1 = switch1.isOn ? -num1 : num1
        let matchedSignNum2 = switch2.isOn ? -num2 : num2
        num1Label.text = String(matchedSignNum1)
        num2Label.text = String(matchedSignNum2)
        resultCalculationLabel.text = String(matchedSignNum1 + matchedSignNum2)
    }
}
