//
//  ViewController.swift
//  TaleView001
//
//  Created by 中塚富士雄 on 2020/06/03.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

//ViewControllerのクラス宣言にテーブルビューを表示するクラスが準拠するプロトコル（delegate/datasourceを追記する）

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    //配列の準備
    var textArray = ["銀座","新橋","六本木","赤坂","渋谷","新宿","池袋"]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        //tableViewのdelegate/Datasourceを設定
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = self.view.frame
        
          }

    //Section数を返す
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    //Sectionごとの行数を返す。セルの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }
    //Sectionの高さを決める
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.size.height/8
    }

    //セルを作る
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = textArray[indexPath.row]
        
        return cell
        
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "next") as! NextViewController
        
        nextVC.textString = textArray[indexPath.row]
        
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    
}

