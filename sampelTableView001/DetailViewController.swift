//
//  DetailViewController.swift
//  sampelTableView001
//
//  Created by Tatsuki Nakatsuka on 2017/11/03.
//  Copyright © 2017年 Tatsuki Nakatsuka. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    var loveList = [" I fancy you．",
                    "I fell in love with you at first sight．",
                    "I would like to know more about you.",
                    "I’m drawn to you."]
    //受け取った行番号を保存しておく変数。
    var passedIndex:Int = -1
    
    @IBOutlet weak var myLabel: UILabel!
    

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()     //viewDidLoadidoad  移動すると表示される。

        myLabel.text = loveList[passedIndex]
        print(passedIndex)
        
       print("２枚目表示されたよ")
        print("受け取った行番号\(passedIndex)")
        
        
        if passedIndex != -1{
            
        }
        
        let r = passedIndex
        switch r{
        case 0:
            imageView.image = UIImage(named:"loveList0.jpeg")
        case 1:
            imageView.image = UIImage(named:"loveList1.jpeg")
        case 2:
            imageView.image = UIImage(named:"loveList2.jpeg")
        case 3:
            imageView.image = UIImage(named:"loveList3.jpeg")

        default: //2
           
        print(passedIndex)
        
        }
   
        
        //文字の量に合わせて変化していくように設定
        myTextView.sizeToFit()
        
        //文字寄せを中央寄せに変更
        myTextView.textAlignment = NSTextAlignment.center
        
        switch r {
        case 0:
            myTextView.text = "「あなたが好きです」　　　　　　　　　　　お付き合いをしたいと思った時に使える言葉。特に若者や知り合って間もない男女が使う、ちょっと軽めの愛の告白の言葉です。"
        case 1:
            myTextView.text = "「君ににひとめぼれしたよ」　　　at first singhtは直訳すると“初見、初めて見た時”ですが、hell in love“恋に落ちた”と合わせると、“ひとめぼれ”と訳すことができます。"
        case 2:
            myTextView.text = "「もっとあなたのことを知りたい」　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　相手に興味がある時に使われる言葉。恋愛に発展させたい時などに使います。"
            
        default:
            myTextView.text = "「私はあなたに惹かれています。」　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　素直に自分の想いを伝えるときに使います。こんなにストレートに言われたら嬉しくなっちゃいますよね。"
            
            
        }
        
        print(myTextView.text)
        
        func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

  }
}
