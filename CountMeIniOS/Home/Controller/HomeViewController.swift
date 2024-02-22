//
//  HomeViewController.swift
//  CountMeIniOS
//
//  Created by Karthik K Manoj on 22/02/24.
//

import UIKit
import YMatterType
import YCoreUI

final class HomeViewController: UIViewController {

    let parkingButton: TypographyButton = {
        let button = TypographyButton(typography: .system)
        button.setImage(.add, for: .normal)
        return button
    }()
    
    let lunchButton: TypographyButton = {
        let button = TypographyButton(typography: .system)
        button.setImage(.remove, for: .normal)
        return button
    }()
    
    let progileButton: TypographyButton = {
        let button = TypographyButton(typography: .system)
        button.setImage(.checkmark, for: .normal)
        return button
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.spacing = 5
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        build()
        configureView()
    }
}

private extension HomeViewController {
    func build() {
        buildViews()
        buildConstraints()
    }
    
    func buildViews() {
        view.addSubview(stackView)
    }
    
    func buildConstraints() {
        stackView.constrainEdges(.horizontal, with: NSDirectionalEdgeInsets(leadingAndTrailing: 16))
        stackView.constrain(.topAnchor, to: view.topAnchor, constant: 36)
    }
    
    func configureView() {
        view.backgroundColor = .blue
    }
}

