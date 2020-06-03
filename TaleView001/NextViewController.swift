//
//  NextViewController.swift
//  TaleView001
//
//  Created by 中塚富士雄 on 2020/06/03.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    //label に入る値の受け渡し用の変数
    var textString = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = textString
        
    
    }
    


}
