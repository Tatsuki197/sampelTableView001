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
    
  var loveList = [" I fancy you．",
                 "I fell in love with you at first sight．",
                 "I would like to know more about you.",
                 "I’m drawn to you."]
    
    //何行目が選択されたか保存する変数.
    //-1は何もまだ行番号が保存されていないという目印。
    var selectedIndex = -1
    
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
        return loveList.count       //変数.countは、変数の中の配列を数を数える。
   }
    //    ３.リストに表示する文字列を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //文字列を表示するセルの取得（セルの再利用） indexPath→セルの中に入る
        let cell = tableView.dequeueReusableCell(withIdentifier: "ell", for: indexPath)
        //表示したい文字の設定
//        cell.textLabel?.text = "\(indexPath.row)行目"
        cell.textLabel?.text = loveList[indexPath.row]
        cell.textLabel!.text = "★\(loveList[indexPath.row])"
        // cellはUITableViewCellオブジェクト
        
       
        
//        // Section Header View
//        func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//            // HeaderのViewを作成してViewを返す
//            let headerView = UIView()
//            let label = UILabel()
//            headerView.addSubview(label)
//            return view
//        }
//
//        // Section Header Height
//        func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//            // ヘッダーViewの高さを返す
//            return 40
//        }
      
        //文字を設定したセルを返す
//        cell.textLabel?.textColor = UIColor.brownColor() これはダメ
        cell.textLabel?.textColor = UIColor.brown
        
       
        cell.accessoryType = .disclosureIndicator
//        if indexPath.row == 0 {
//        }
//
        return cell
     
    }
    //セルをタップしたら発動。　　紅茶の各種類の説明ページに飛ぶ。
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)行目がタップされました")
        //選択された行番号を保存
        selectedIndex = indexPath.row
        
        //セグエ(ページを紐付ける線)の名前を指定して、画面移動処理を発動
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    //セグエ(ページを紐付ける線)を使って、画面移動している時に発動
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //次の画面のインスタンス（オブジェクト）を取得。
        //as! DetailViewControllerが、ダウンキャスト変換している箇所。
        
        let dvc:DetailViewController = segue.destination            //segue.destination 画面の到着地点。
            as! DetailViewController
        //次の画面のプロパティ（メンバー変数）passedIndexに選択された行番号。移動するページに先にpassedIndexを飛ばす場所を要しする
        dvc.passedIndex = selectedIndex                 //DetailViewControllerが持っているpassedIndexに飛ばす。
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


  }

