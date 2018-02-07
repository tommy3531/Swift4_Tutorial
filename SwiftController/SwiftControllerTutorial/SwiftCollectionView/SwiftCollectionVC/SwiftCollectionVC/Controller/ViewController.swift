import UIKit

class ViewController: UIViewController {

    
    var headerView: UIView!
    var titleLabel: UILabel!
    var numbersCollectionView: UICollectionView!
    let numbersCollectionViewDelegateAndDataSource = NumbersCollectionViewDelegateAndDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the HeaderView and label to the View
        setupHeaderAndTitle()
        
        let frame = self.view.frame
        let layout = UICollectionViewFlowLayout()
        numbersCollectionView = UICollectionView(frame: frame, collectionViewLayout: layout)

        // Add the collectionView
        self.view.addSubview(numbersCollectionView)

        numbersCollectionView.translatesAutoresizingMaskIntoConstraints = false
        numbersCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        numbersCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        numbersCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        numbersCollectionView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        
        // Register the cell with collectionView and give the cell and Idenitifer
        numbersCollectionView.register(NumbersCollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        
        // Tell the collectionView where it is getting the data from
        numbersCollectionView.delegate = numbersCollectionViewDelegateAndDataSource
        numbersCollectionView.dataSource = numbersCollectionViewDelegateAndDataSource
    }
    
    func setupHeaderAndTitle() {
        
        // Initialize view
        headerView = UIView()
        
        // Make the view background red
        headerView.backgroundColor = .red
        
        // add it to the ViewController's View
        self.view.addSubview(headerView)
        
        // Initialize label
        titleLabel = UILabel()
        
        // add some text to the label
        titleLabel.text = "Numbers"
        
        // Center the text in the label
        titleLabel.textAlignment = .center
        
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 20)
        headerView.addSubview(titleLabel)

        // Set position of view using constraints
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.4).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.5).isActive = true
    }
}

