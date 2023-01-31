//
//  SetViewController.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

import UIKit

class SetViewController: UIViewController {
    
    @IBOutlet private weak var textFieldOne: UITextField!
    @IBOutlet private weak var textFieldTwo: UITextField!
    @IBOutlet private weak var allMatchingLettersLabel: UILabel!
    @IBOutlet private weak var allCharactersNotMatchLabel: UILabel!
    @IBOutlet private weak var allUniqueCharactersNotMatchLabel: UILabel!
    
    private let setService = SetService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accessibilityLabel()
    }
    
    private func accessibilityLabel() {
        textFieldOne.accessibilityLabel = "textFieldOne"
        textFieldTwo.accessibilityLabel = "textFieldTwo"
    }
    
    @IBAction private func matchingLetters(_ sender: Any) {
        guard let textFieldOneText = textFieldOne.text, textFieldOneText != " ", let texFieldTwoText = textFieldTwo.text, texFieldTwoText != " " else { return }
        allMatchingLettersLabel.text = setService.findMatchingLetters(in: textFieldOneText, texFieldTwoText)
    }
    
    @IBAction private func findNoMatchingLetters(_ sender: Any) {
        guard let textFieldOneText = textFieldOne.text, textFieldOneText != " ", let texFieldTwoText = textFieldTwo.text, texFieldTwoText != " " else { return }
        allCharactersNotMatchLabel.text = setService.findNoMatchingLetters(in: textFieldOneText, texFieldTwoText)
    }
    
    @IBAction private func findNoMatchingLettersInFirstTF(_ sender: Any) {
        guard let textFieldOneText = textFieldOne.text, textFieldOneText != " ", let texFieldTwoText = textFieldTwo.text, texFieldTwoText != " " else { return }
        allUniqueCharactersNotMatchLabel.text = setService.findNoMatchingLettersInFirstTF(in: textFieldOneText, texFieldTwoText)
    }
}
