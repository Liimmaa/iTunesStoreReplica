//
//  ViewController.swift
//  iTunesStoreReplica
//
//  Created by Chioma Amanda Mmegwa  on 26/02/2022.
//

import UIKit

final class DashboardViewController: UIViewController {

    private var segmentedController: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupNavigationBarItems()
    }
    
    private func setupNavigationBarItems() {
        self.navigationItem.leftItemsSupplementBackButton = true
        
        // Setup Left Bar Button Item
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Genres", style: .plain, target: self, action: #selector(didPressGenres))

        // Setup Right Bar Button Item
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.bullet"), style: .plain, target: self, action: #selector(didPressMenu))
        
        // Setup Segmented Control
        let items = ["Featured", "Charts"]
        segmentedController = UISegmentedControl(items: items)
        navigationItem.titleView = segmentedController
        segmentedController.selectedSegmentIndex = 0
        segmentedController.tintColor = UIColor.black
        segmentedController.addTarget(self, action: #selector(self.applyFilter), for: UIControl.Event.valueChanged)
    }

    @objc private func didPressGenres() {}

    @objc private func didPressMenu() {}
    
    @objc private func applyFilter(segment: UISegmentedControl) -> Void {
        switch segment.selectedSegmentIndex {
        case 0:
            print("Featured here")
        case 1:
            print("Charts here")
        default:
            print("Leave me alone")
        }
    }
}

