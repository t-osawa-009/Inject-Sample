//
//  TopViewController.swift
//  Inject-Sample
//
//  Created by Takuya Ohsawa on 2018/03/02.
//  Copyright © 2018年 Takuya Ohsawa. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(interjected(notification:)), name: .InjectBundleNotification, object: nil)
    }
    
    @objc func interjected(notification: Notification) {
        navigationController?.popViewController(animated: false)
        let storyboard = UIStoryboard(name: String(describing: SecondViewController.self), bundle: nil)
        let vc = storyboard.instantiateInitialViewController()!
        navigationController?.pushViewController(vc, animated: true)
    }
}

