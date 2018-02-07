//
//  ViewController.swift
//  injectionTutorial
//
//  Created by Tom Marler on 1/25/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import UIKit

private struct Constants {
    static let CellIdentifier = "ListItemCell"
}

class ViewController: UIViewController {
    
    fileprivate var items: [ListDisplayable]?
    var dataProvider: ListDisplayableDataProvider = MoviesManager()
    //var movieDataSource: MoviesDataSource = MoviesDataSource()
    

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        dataProvider.searchListItems(searchTerm: "Tree", onCompleted: { (listOfMovies) in
            self.items = listOfMovies
            print(self.items!.count)
        })
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellIdentifier)
        
        if let cellItem = items?[indexPath.row] {
            cell?.textLabel?.text = cellItem.listItemTitle
            cell?.detailTextLabel?.text = cellItem.listItemSubtitle
        }
        
        return cell!
    }
}

extension ViewController {
    
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        
        guard let moviesManager = dataProvider as? MoviesManager else {
            return
        }
        
        if sender.selectedSegmentIndex == 0 {
            moviesManager.moviesDataProvider = MoviesDataSource()
            moviesManager.moviesDataProvider.networkingProvider = AFNetworkConnector()
        } else if sender.selectedSegmentIndex == 1 {
            moviesManager.moviesDataProvider = MoviesDataSource()
            moviesManager.moviesDataProvider.networkingProvider = NSURLNetworkConnector()
        } else if sender.selectedSegmentIndex == 2 {
            moviesManager.moviesDataProvider = MoviesDataSource_Operations()
        }
        
    }
}
