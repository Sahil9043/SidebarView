//
//  HomeViewController.swift
//  SidebarView
//
//  Created by Lalaiya Sahil on 13/04/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var menuBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
//        setMenuButton(menuBarButton)
        if self.revealViewController() != nil {
            menuBarButton.target = self.revealViewController()
            menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
//        func setMenuButton(_  menubar: UIBarButtonItem){
//            menuBarButton.target = self.revealViewController()
//            menuBarButton.action = #selector(SWRevealViewController.revealToggle(_:))
//            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//        }
    }
}
