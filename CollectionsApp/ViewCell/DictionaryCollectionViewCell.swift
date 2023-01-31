//
//  DictionaryCollectionViewCell.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

import UIKit

class DictionaryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dictionaryButtonCell: UIButton!
    @IBOutlet weak var dictionaryLabelCell: UILabel!
    @IBOutlet weak var indicatorDictionaryCell: UIActivityIndicatorView!
    
    let measureTimeService = MeasureTimeService()
    var phoneBookArrayService : PhoneBookArrayService?
    var phoneBookDictionaryService : PhoneBookDictionaryService?
   
    var resultPerformingOperationCell = ""
    
    func toggleActivityIndicator(toggle: Bool) {
        if toggle {
            dictionaryButtonCell.isHidden = true
            indicatorDictionaryCell.startAnimating()
        } else {
            indicatorDictionaryCell.stopAnimating()
            dictionaryLabelCell.isHidden = false
        }
    }
    
    @IBAction func performOperationWithDictionary(_ sender: UIButton!) {
        
        toggleActivityIndicator(toggle: true)
        guard let phoneBookArrayService = phoneBookArrayService else { return }
        guard let phoneBookDictionaryService = phoneBookDictionaryService else { return }
        let propertyToCheck = sender.currentTitle
        
        switch propertyToCheck {
        case DictionaryOperationsIdentifiers.findFirsContactArray :
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    phoneBookArrayService.searchFirstElementInArray()
                }
                
                DispatchQueue.main.async { [self] in
                    
                    toggleActivityIndicator(toggle: false)
                    dictionaryLabelCell.text = "First element search time: \(resultPerformingOperationCell) ms. Result number: 0."
                    dictionaryLabelCell.accessibilityLabel = "First element search time: 0.0 ms. Result number: 0."
                }
            }
            
        case DictionaryOperationsIdentifiers.findFirstContactDictionary:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    phoneBookDictionaryService.searchFirstElementDictionary()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    dictionaryLabelCell.text = "First element search time: \(resultPerformingOperationCell) ms. Result number: 0."
                    dictionaryLabelCell.accessibilityLabel = "First element search time: 0.0 ms. Result number: 0."
                }
            }
        case DictionaryOperationsIdentifiers.findLastContactArray:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    phoneBookArrayService.searchLastElementInArray()
                }
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    dictionaryLabelCell.text = "Last element search time: \(resultPerformingOperationCell) ms. Result number: 9999999."
                    dictionaryLabelCell.accessibilityLabel = "Last element search time: 0.0 ms. Result number: 9999999."
                }
            }
            
        case DictionaryOperationsIdentifiers.findLastContactDictionary:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    phoneBookDictionaryService.searchLastElementDictionary()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    dictionaryLabelCell.text = "Last element search time: \(resultPerformingOperationCell) ms. Result number: 9999999."
                    dictionaryLabelCell.accessibilityLabel = "Last element search time: 0.0 ms. Result number: 9999999."
                }
            }
        case DictionaryOperationsIdentifiers.searchNonExistingElementArray:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    phoneBookArrayService.searchNonExistentElementInArray()
                }
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    dictionaryLabelCell.text = "Non-existing element search time: \(resultPerformingOperationCell) ms. Result number: -."
                    dictionaryLabelCell.accessibilityLabel = "Non-existing element search time: 0.0 ms. Result number: -."
                }
            }
            
        case DictionaryOperationsIdentifiers.searchNonExistingElementDictionary:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    phoneBookDictionaryService.searchNonExistingElementDictionary()
                    
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    dictionaryLabelCell.text = "Non-existing element search time: \(resultPerformingOperationCell) ms. Result number: -."
                    dictionaryLabelCell.accessibilityLabel = "Non-existing element search time: 0.0 ms. Result number: -."
                }
            }
        default: break
        }
        
    }
}
