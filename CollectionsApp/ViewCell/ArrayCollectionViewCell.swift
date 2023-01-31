//
//  ArrayCollectionViewCell.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

import UIKit

class ArrayCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var arrayButtonCell: UIButton!
    @IBOutlet weak var arrayLabelCell: UILabel!
    @IBOutlet weak var arrayIndicatorCell: UIActivityIndicatorView!
    
    let measureTimeService = MeasureTimeService()
    var arrayService:ArrayService?
    var resultPerformingOperationCell = ""
    
    func toggleActivityIndicator(toggle: Bool) {
        if toggle {
            arrayButtonCell.isHidden = true
            arrayIndicatorCell.startAnimating()
        } else {
            arrayIndicatorCell.stopAnimating()
            arrayLabelCell.isHidden = false
        }
    }
    
    @IBAction func performOperationWithArray(_ sender: UIButton!) {
        
        toggleActivityIndicator(toggle: true)
        let propertyToCheck = sender.currentTitle
        guard let arrayService = arrayService else { return}
        switch propertyToCheck {
            
        case ArrayOperationsIdentifiers.insert1000BeginningOneBeOne:
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.insertAtTheBeginningArrayOneBeOne()
                }
                DispatchQueue.main.async { [self ] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Insertion time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Insertion time:"
                }
            }
            
        case ArrayOperationsIdentifiers.insert1000BeginningAtOnce:
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.insertAtTheBeginningArrayAtOnce()
                }
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Insertion time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Insertion time:"
                }
            }
            
        case ArrayOperationsIdentifiers.insert1000MiddleOneBeOne:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.insertAtTheMiddleArrayOneBeOne()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Insertion time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Insertion time:"
                }
            }
            
        case ArrayOperationsIdentifiers.insert1000MiddleAtOnce:
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.insertAtTheMiddleArrayAtOnce()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Insertion time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Insertion time:"
                }
            }
            
        case ArrayOperationsIdentifiers.insert1000EndOneBeOne:
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.insertAtTheEndArrayOneBeOne()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Insertion time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Insertion time:"
                }
            }
            
        case ArrayOperationsIdentifiers.insert1000EndAtOnce:
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.insertAtTheEndArrayAtOnce()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Insertion time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Insertion time:"
                }
            }
            
        case ArrayOperationsIdentifiers.remove1000BeginningOneBeOne:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.removeAtTheBeginningArrayOneBeOne()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Removing time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Removing time:"
                }
            }
            
        case ArrayOperationsIdentifiers.remove1000BeginningAtOnce:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.removeAtTheBeginningArrayAtOnce()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Removing time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Removing time:"
                }
            }
            
        case ArrayOperationsIdentifiers.remove1000MiddleOneBeOne:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.removeAtTheMiddleArrayOneBeOne()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Removing time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Removing time:"
                }
            }
            
        case ArrayOperationsIdentifiers.remove1000MiddleAtOnce:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.removeAtTheMiddleArrayAtOnce()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Removing time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Removing time:"
                }
            }
            
        case ArrayOperationsIdentifiers.remove1000EndOneBeOne:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.removeAtTheEndArrayOneBeOne()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Removing time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Removing time:"
                }
            }
            
        case ArrayOperationsIdentifiers.remove1000EndAtOnce:
            
            DispatchQueue.global().async { [self] in
                resultPerformingOperationCell = measureTimeService.measureTime {
                    arrayService.removeAtTheEndArrayAtOnce()
                }
                
                DispatchQueue.main.async { [self] in
                    toggleActivityIndicator(toggle: false)
                    arrayLabelCell.text = "Removing time: \(resultPerformingOperationCell) ms."
                    arrayLabelCell.accessibilityLabel = "Removing time:"
                }
            }
        default: break
        }
    }
}
