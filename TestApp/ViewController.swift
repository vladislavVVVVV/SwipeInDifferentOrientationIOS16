//
//  ViewController.swift
//  TestApp
//
//  Created by Uladzislau Yaunevich on 9/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    let button: UIButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        view.backgroundColor = .blue
        button.setTitle("Next", for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        button.addTarget(self, action: #selector(nextViewController), for: .touchUpInside)
    }
    
    @objc func nextViewController() {
        navigationController?.pushViewController(RedViewController(), animated: true)
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        .portrait
    }
}


class RedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

class VIBNavCon: UINavigationController {
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return self.topViewController?.supportedInterfaceOrientations ?? .all
        }
    }
}
