import UIKit

//实现类“TaskManager”，对象名称taskMgr
var taskMgr = TaskManager()

//定义结构体task，包含两个字符串变量name和desc
struct task{
    var name = "non-name"
    var desc = "non-desc"
}

//定义TaskManager类，包含属性tasks和方法addTask()
class TaskManager: NSObject {
    
    //tasks为数组，每个数组元素是一个task结构体
    var tasks = [task]()
    
    //向属性tasks增加元素，调用tasks数组的append方法添加元素
    func addTask(name:String,desc:String){
        tasks.append(task(name: name, desc: desc))
    }
   
}
