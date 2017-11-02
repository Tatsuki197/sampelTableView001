//
//  ViewController.swift
//  sampelTableView001
//
//  Created by Tatsuki Nakatsuka on 2017/10/30.
//  Copyright © 2017年 Tatsuki Nakatsuka. All rights reserved.
//

import UIKit

//1.プロトコルの設定()DataSource,Delegate)
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    //表示したいデータ（配列）
    
  var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //Storyboadで設定する（PickerViewの時はプログラムで指定する）
        //4.TableViewに指示をだすのがViwwControllerだと設定する
        //myTableView.delegate = self プログラムで書く場合
        //myTableView.dataSource = self プログラムで書く場合
        
        //5.tableViewにCellオブジェクトを追加してindentifierに「Cell」という名前をつける
    }
    //2.行数の決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        var retValue = 0
//////        if section == 0{
//            retValue = 10
////////            return 10  //10行表示
//////        }else{
//////            retValue = 20
//////            //return 20 10行表示
//////
//////        }
//////
//        return retValue
        
        //エラーがなかなか消えない時はcommand+shift+kで一旦エラーを削除
        return teaList.count       //変数.countは、変数の中の配列を数を数える。
   }
    //    ３.リストに表示する文字列を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //文字列を表示するセルの取得（セルの再利用） indexPath→セルの中に入る
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //表示したい文字の設定
//        cell.textLabel?.text = "\(indexPath.row)行目"
        cell.textLabel?.text = teaList[indexPath.row]
        // cellはUITableViewCellオブジェクト
        
       
        
        // Section Header View
        func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            // HeaderのViewを作成してViewを返す
            let headerView = UIView()
            let label = UILabel()
            headerView.addSubview(label)
            return view
        }
        
        // Section Header Height
        func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            // ヘッダーViewの高さを返す
            return 40
        }
      
        //文字を設定したセルを返す
//        cell.textLabel?.textColor = UIColor.brownColor() これはダメ
        cell.textLabel?.textColor = UIColor.brown
        cell.accessoryType = .disclosureIndicator
        cell.textLabel!.text = "★\(teaList[indexPath.row])"
      
        return cell
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


  }

