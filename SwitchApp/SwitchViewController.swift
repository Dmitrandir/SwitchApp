//
//  ViewController.swift
//  SwitchApp
//
//  Created by Дмитрий Солопов on 09.12.2022.
//

import UIKit


//MARK: - SwitchViewController
final class SwitchViewController: UIViewController {
    
    //MARK: - Private property
    private var colorView = UIView()
    private var onOffLabel = UILabel()
    private var selectorSwitch = UISwitch()
    
    //MARK: - Override UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //MARK: - Actions
    @objc
    private func changeColorView() {
        
        if selectorSwitch.isOn {
            colorView.backgroundColor = .systemRed
            onOffLabel.text = "On"
        } else {
            colorView.backgroundColor = .systemGreen
            onOffLabel.text = "Off"
        }
    }
}
//MARK: - Setting View
extension SwitchViewController {
    func setupView() {
        view.backgroundColor = .systemMint
        
        addSubViews()
        addActions()
        
        setupColorView()
        setupOnOffLabel()
        
        setupLayout()
    }
}

//MARK: - Setting
extension SwitchViewController {
    func addSubViews() {
        view.addSubview(colorView)
        view.addSubview(onOffLabel)
        view.addSubview(selectorSwitch)
    }
    
    func addActions() {
        selectorSwitch.addTarget(
            self,
            action: #selector(changeColorView),
            for: .touchUpInside)
    }
    
    func setupColorView() {
        colorView.backgroundColor = .systemGreen
        colorView.layer.cornerRadius = 20
    }
    
    func setupOnOffLabel() {
        onOffLabel.text = "Off"
        onOffLabel.font = UIFont.systemFont(ofSize: 32)
        onOffLabel.backgroundColor = .systemMint
    }
    
}

//MARK: - Layout
extension SwitchViewController {
    func setupLayout() {
        
        [colorView, onOffLabel, selectorSwitch].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
        
            colorView.topAnchor.constraint(equalTo: view.topAnchor,
                                           constant: 150),
            colorView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            colorView.widthAnchor.constraint(equalToConstant: 300),
            colorView.heightAnchor.constraint(equalToConstant: 150),
            
            onOffLabel.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 100),
            onOffLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            selectorSwitch.topAnchor.constraint(equalTo: onOffLabel.bottomAnchor, constant: 20),
            selectorSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
       /*
        colorView.topAnchor.constraint(equalTo: view.topAnchor,
                                       constant: 150).isActive = true
        colorView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        colorView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        colorView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        onOffLabel.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 100).isActive = true
        onOffLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        selectorSwitch.topAnchor.constraint(equalTo: onOffLabel.bottomAnchor, constant: 20).isActive = true
        selectorSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        */
    }
    
}
