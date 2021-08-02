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
        let num1 = matchSign(isOn: switch1.isOn,
                             num: Double(textField1.text ?? "") ?? 0)
        let num2 = matchSign(isOn: switch2.isOn,
                             num: Double(textField2.text ?? "") ?? 0)
        num1Label.text = String(num1)
        num2Label.text = String(num2)
        resultCalculationLabel.text = String(num1 + num2)
    }

    private func matchSign(isOn: Bool, num: Double) -> Double {
        if isOn {
            let num = -num
            return num
        }
        return num
    }
}
