//
//  ViewController.swift
//  HwSwiftProj6b
//
//  Created by Alex Wibowo on 15/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        let mainView = UIView()
        
        let label1 = UILabel()
        label1.text = "THESE"
        label1.backgroundColor = .red
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        let label2 = UILabel()
        label2.text = "ARE"
        label2.backgroundColor = .blue
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        let label3 = UILabel()
        label3.text = "SOME"
        label3.backgroundColor = .yellow
        label3.translatesAutoresizingMaskIntoConstraints = false
        
        let label4 = UILabel()
        label4.text = "AWESOME"
        label4.backgroundColor = .green
        label4.translatesAutoresizingMaskIntoConstraints = false
        
        let label5 = UILabel()
        label5.text = "LABELS"
        label5.backgroundColor = .cyan
        label5.translatesAutoresizingMaskIntoConstraints = false
        
        mainView.addSubview(label1)
        mainView.addSubview(label2)
        mainView.addSubview(label3)
        mainView.addSubview(label4)
        mainView.addSubview(label5)
        
        
        label1.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor).isActive = true
        
        for label in [label2, label3, label4, label5] {
            label.heightAnchor.constraint(equalTo: label1.heightAnchor, multiplier: 1).isActive = true
        }
        
        var previousLabel : UILabel?
        for label in [label1, label2, label3, label4, label5] {
            label.widthAnchor.constraint(equalTo: mainView.widthAnchor).isActive = true
            
            let heightAnchor = label.heightAnchor.constraint(equalToConstant: 88)
            heightAnchor.priority = UILayoutPriority(999)
            heightAnchor.isActive = true
            
            if previousLabel != nil {
                label.topAnchor.constraint(equalTo: previousLabel!.bottomAnchor, constant: 10).isActive = true
            }

            previousLabel = label
        }

        label5.bottomAnchor.constraint(lessThanOrEqualTo:  mainView.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true

        view = mainView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

