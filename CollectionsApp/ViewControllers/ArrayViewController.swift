//
//  ArrayViewController.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

import UIKit

class ArrayViewController: UIViewController {
    
    @IBOutlet weak private var button: UIButton!
    @IBOutlet weak private var arrayCollection: UICollectionView!
    @IBOutlet weak private var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak private var resultCreationArrayLabel: UILabel!
    
    private let titlesService = TitlesService()
    private let arrayService = ArrayService()
    private let measureTimeService = MeasureTimeService()
    private var resultPerformingOperation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultCreationArrayLabel.accessibilityLabel = "Array creation time:"
        arrayCollection.accessibilityLabel = "Array Collection"
    }
    
    @IBAction private func creationIntArray(_ sender: Any) {
        
        toggleUI(toggle: true)
        
        DispatchQueue.global().async { [self] in
            resultPerformingOperation = measureTimeService.measureTime {
                arrayService.createArray()
            }
            
            DispatchQueue.main.async { [self] in
                toggleUI(toggle: false)
                resultCreationArrayLabel.text = "Array creation time: \(resultPerformingOperation) ms."
            }
        }
    }
    
    private func toggleUI(toggle: Bool) {
        if toggle {
            button.isHidden = true
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
            resultCreationArrayLabel.isHidden = false
            arrayCollection.isHidden = false
        }
    }
}

extension ArrayViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titlesService.titlesArrayCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = arrayCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ArrayCollectionViewCell else { return UICollectionViewCell() } 
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.arrayButtonCell.setTitle(titlesService.titlesArrayCell[indexPath.row].title, for: .normal)
        cell.arrayService = arrayService
        
        return cell
    }
}
