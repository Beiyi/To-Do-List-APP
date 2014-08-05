//
//  FirstViewController.swift
//  task
//
//  Created by beiyi on 14-7-25.
//  Copyright (c) 2014 beiyi.zhang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //Table外观
    @IBOutlet var tblTasks: UITableView!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //方法覆盖：刷新TableView数据
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData()
    }
    
    //按索引号（index）移除对象taskgr中的属性tasks的一个元素（即当前选中元素）
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!){
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData()
        }
    }

    //tableView必选方法，指定每组cell（即Section）的个数
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }
    
    //tableView必选方法，生成单个cell
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        
        //选取cell模版，生成一个cell
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "mycell")
        
        //定义cell中textLabel中的文本，来源是taskMgr对象的tasks属性的元素，元素索引号由row确定
        cell.textLabel.text = "\(indexPath.row)号索引数组元素：\(taskMgr.tasks[indexPath.row].name)"
        cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].desc
        return cell
    }



}

