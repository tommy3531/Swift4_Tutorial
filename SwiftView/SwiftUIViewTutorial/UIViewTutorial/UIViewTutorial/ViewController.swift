//
//  ViewController.swift
//  UIViewTutorial
//
//  Created by Tom Marler on 2/7/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var emptyLabel: UILabel = {
        let frame = CGRect(x: 0, y: 0, width: 420, height: 50)
        let label = UILabel(frame: frame)
        label.text = "Hello, world"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16.0)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Frame tells the view about size and origin of view
        // Frame is seen from the perspective of the views superview
        let frame = CGRect(x: 0, y: 0, width: 420, height: 50)
        
        // Get the view the constraints
        let view = UIView(frame: frame)
        
        // add label as subview
        view.addSubview(emptyLabel)
        
        // Make the view background color red
        view.backgroundColor = .red
        
        // since we have reference to the view controllers main view add the new view to it
        self.view.addSubview(view)
        

    }
}

