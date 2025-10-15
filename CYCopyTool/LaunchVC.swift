//
//  ViewController.swift
//  CYCopyTool
//
//  Created by Neil on 2025/10/15.
//

import UIKit

class LaunchVC: UIViewController {
    var delay: DispatchTimeInterval = .seconds(1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let mSec1 = DispatchTime.now()
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            let mSec2 = DispatchTime.now()
            print("[LaunchVC] mSec1: \(mSec1.uptimeNanoseconds / 1_000_000), mSec2: \(mSec2.uptimeNanoseconds / 1_000_000)")
            self.openNextView()
        }
    }
    
    //MARK: CUSTOM
    func openNextView(){
        //預設值設定
        //設定Table section上的Padding
        if #available(iOS 15.0, *) {
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        UITableView.appearance().showsVerticalScrollIndicator = false
        UITableView.appearance().showsHorizontalScrollIndicator = false
        UITableView.appearance().estimatedRowHeight = 0
        UITableView.appearance().estimatedSectionHeaderHeight = 0
        UITableView.appearance().estimatedSectionFooterHeight = 0
        UICollectionView.appearance().showsVerticalScrollIndicator = false
        UICollectionView.appearance().showsHorizontalScrollIndicator = false
        UIScrollView.appearance().showsVerticalScrollIndicator = false
        UIScrollView.appearance().showsHorizontalScrollIndicator = false
        
        //設定通用返回鍵
        
        //語系設定
        
        //建立Loading
        
        //進入主畫面
        
    }
}
