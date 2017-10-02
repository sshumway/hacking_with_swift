//
//  DetailsViewController.swift
//  Milestone 2 Challenge
//
//  Created by Scott on 10/1/17.
//  Copyright © 2017 Shumworks LLC. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    var selectedCountry: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedCountry
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))

        if let countryToView = selectedCountry {
            image.image = UIImage(named: countryToView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func shareTapped() {
        let vc = UIActivityViewController(activityItems: [image.image!], applicationActivities: [])
        
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        
        present(vc, animated: true)
    }

}
