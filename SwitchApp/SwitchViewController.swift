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
    private var colorLabel = UILabel()
    private var onOffLabel = UILabel()
    private var selectorSwitch = UISwitch()
    
    //MARK: - Override UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

}
//MARK: - Setting View
extension SwitchViewController {
    func setupView() {
        view.backgroundColor = .gray
    }
}

//MARK: - Setting
extension SwitchViewController {
    func addSubViews() {
        view.addSubview(colorLabel)
        view.addSubview(onOffLabel)
        view.addSubview(selectorSwitch)
    }
    
    func setupColorLabel() {
        colorLabel.backgroundColor = .green
        colorLabel.layer.cornerRadius = 15
    }
    
    func setupOnOffLabel() {
        onOffLabel.text = "Off"
        onOffLabel.backgroundColor = .gray
    }
    
    func setupSelectorSwitch() {
        
    }
}

//MARK: - Layout
extension SwitchViewController {
    
}
