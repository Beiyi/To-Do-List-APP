//
//  SecondViewController.swift
//  task
//
//  Created by 张北一 on 14-7-25.
//  Copyright (c) 2014年 beiyi.zhang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    //引用文本框
    @IBOutlet var txtTask: UITextField!
    
    @IBOutlet var txtDesc: UITextField!
    
    //定义按键行为
    @IBAction func addTask(sender: UIButton) {
        
        //调用taskMgr的addTask方法向属性添加元素，添加的来源是textField的内容
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        
        //设置输入状态为结束，收起键盘
        self.view.endEditing(true)
        
        //清空文本框
        txtDesc.text = ""
        txtTask.text = ""
        
        //让视图跳到0号tab，即任务列表
        self.tabBarController.selectedIndex = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //点击任意位置收起键盘
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    //如果激活文本框就弹出键盘
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder()
        return true
    }


}

