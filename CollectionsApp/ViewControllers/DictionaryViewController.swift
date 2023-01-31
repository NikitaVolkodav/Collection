//
//  DictionaryViewController.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

import UIKit

class DictionaryViewController: UIViewController {
    
    @IBOutlet private weak var collectionViewDictionary: UICollectionView!
    @IBOutlet private weak var indicator: UIActivityIndicatorView!
    @IBOutlet private weak var arrayLabel: UILabel!
    @IBOutlet private weak var dictionaryLabel: UILabel!
    
    private let phoneBookArrayService = PhoneBookArrayService()
    private let titlesService = TitlesService()
    private let phoneBookDictionaryService = PhoneBookDictionaryService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createdBookArrayAndBookDictionaryAsync()
        accessibilityLabel()
    }
    
    private func accessibilityLabel() {
        collectionViewDictionary.accessibilityLabel = "Dictionary Collection"
        indicator.accessibilityLabel = "Indicator in progress"
    }
    
    private func showCollectionViewAndConstantLabel() {
        collectionViewDictionary.isHidden = false
        arrayLabel.isHidden = false
        dictionaryLabel.isHidden = false
    }
    
    private func createdBookArrayAndBookDictionaryAsync() {
        indicator.startAnimating()
        DispatchQueue.global(qos: .userInteractive).async { [self] in
            phoneBookArrayService.createdContactsArray()
            phoneBookDictionaryService.createdContactsDictionary()
            DispatchQueue.main.async { [self] in
                indicator.stopAnimating()
                if indicator.isHidden == true {
                    showCollectionViewAndConstantLabel()
                }
            }
        }
    }
}

extension DictionaryViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titlesService.titlesArrayAndDictionary.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionViewDictionary.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DictionaryCollectionViewCell else { return UICollectionViewCell() }
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.dictionaryButtonCell.setTitle(titlesService.titlesArrayAndDictionary[indexPath.row].title, for: .normal)
        cell.phoneBookArrayService = phoneBookArrayService
        cell.phoneBookDictionaryService = phoneBookDictionaryService
        
        return cell
    }
}
