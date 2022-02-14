//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Александр on 09.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    

    private lazy var profileHeaderView: ProfileHeaderView = {
        let view = ProfileHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
        self.setupView()
        self.setupNaigationBar()


    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.profileHeaderView.frame = super.view.frame

    }

    private func setupNaigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.navigationItem.title = "Profile"
    }


    private func setupView() {


        self.profileHeaderView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.profileHeaderView.topAnchor.constraint(equalTo:  self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.profileHeaderView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor).isActive = true
        self.profileHeaderView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true

    }

    

}
