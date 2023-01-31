//
//  MainViewController.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak private var tableView: UITableView!
    
    private let titlesService = TitlesService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesService.titlesVC.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        cell.label.text = titlesService.titlesVC[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let identifier: String
        switch indexPath.row {
        case 0 :
            identifier = "ShowArray"
        case 1:
            identifier = "ShowSet"
        default:
            identifier = "ShowDictionary"
        }
        self.performSegue(withIdentifier: identifier, sender: self)
    }
}
