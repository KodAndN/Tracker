//
//  OverviewNavBar.swift
//  Tracker
//
//  Created by Андрей Кодочигов on 30.12.2022.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorrkoutButton = SecondaryButton()
    private let addButton = UIButton()
    
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBorder(with: R.Colors.separator, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorrkoutButton.addTarget(target, action: action, for: .touchDragInside)
    }
    
    func addAAdditingAction(_ action: Selector, with target: Any?) {
        allWorrkoutButton.addTarget(target, action: action, for: .touchDragInside)
    }
}

extension OverviewNavBar {
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(titleLabel)
        addSubview(allWorrkoutButton)
        addSubview(addButton)
        addSubview(weekView)
        
    }
    
    override func constaintViews() {
        super.constaintViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorrkoutButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorrkoutButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorrkoutButton.heightAnchor.constraint(equalToConstant: 28),
            allWorrkoutButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: addButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorrkoutButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .white
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = R.Strings.NavBar.overview
        titleLabel.textColor = R.Colors.titleGray
        titleLabel.font = R.Fonts.helvelticaRegular(with: 22)
        
        allWorrkoutButton.translatesAutoresizingMaskIntoConstraints = false
        allWorrkoutButton.setTitle(R.Strings.Overview.allWorcoutsButton)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(R.Images.Common.add, for: .normal)
        weekView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}

