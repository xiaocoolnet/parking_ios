//
//  TCMoreFunctionController.swift
//  ASwiftProduct
//
//  Created by xiaocool on 16/4/21.
//  Copyright © 2016年 北京校酷网络科技有限公司. All rights reserved.
//

import UIKit

class TCMoreFunctionController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var avatarButton: UIButton!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneNumLabel: UILabel!
    @IBOutlet weak var levelImageView: UIImageView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var cancelBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurUI()
    }
    func configurUI(){
        avatarButton.layer.cornerRadius = 35
        avatarButton.clipsToBounds = true
        cancelBtn.layer.cornerRadius = 8
        cancelBtn.clipsToBounds = true
        menuTableView.scrollEnabled = false
        menuTableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        self.edgesForExtendedLayout = UIRectEdge.None
        self.automaticallyAdjustsScrollViewInsets = false
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    @IBAction func avatarClicked(sender: AnyObject) {
        print("点头像")
    }
    @IBAction func editBtnClicked(sender: AnyObject) {
        print("点编辑")
    }
    @IBAction func cancelBtnClicked(sender: AnyObject) {
        print("点退出")
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 5
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell()
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "银行卡信息"
            cell.imageView?.image = UIImage(named: "ic_yinhangka")
        case 1:
            cell.textLabel?.text = "账户安全"
            cell.imageView?.image = UIImage(named: "ic_zhanghu")
        case 2:
            cell.textLabel?.text = "通知信息"
            cell.imageView?.image = UIImage(named: "ic_tongzhi")
        case 3:
            cell.textLabel?.text = "清理缓存"
            cell.imageView?.image = UIImage(named: "ic_qingli")
        case 4:
            cell.textLabel?.text = "检查升级"
            cell.imageView?.image = UIImage(named: "ic_shengji")
        default:0
            
        }
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        return menuTableView.frame.height/5
    }
}
