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
    
    struct ViewGroup {
        var textField: UITextField
        var `switch`: UISwitch
        var label: UILabel
    }
    
    var viewGrowps: [ViewGroup] {
        [
         ViewGroup(textField: textField1, switch: switch1, label: num1Label),
         ViewGroup(textField: textField2, switch: switch2, label: num2Label)
        ]
    }

    @IBAction private func didTapButton(_ sender: UIButton) {
        let signedNumbers = viewGrowps.map{ (Double($0.textField.text ?? "") ?? 0) * ($0.switch.isOn ? -1 : 1) }
        // zip関数は２つの配列の同じ番号同士の要素を繋げられる
        zip(viewGrowps, signedNumbers).forEach { $0.0.label.text = String($0.1) }
        // reduce関数は初めの数字を指定しsignedNumbersの和を求めてくれる
        // 掛け算などもできる

        resultCalculationLabel.text = String(signedNumbers.reduce(0, +))
        
        // これも同じ結果が得られる
//        signedNumbers.reduce(0) { result, num in
//            result + num
//        }
    }
}
