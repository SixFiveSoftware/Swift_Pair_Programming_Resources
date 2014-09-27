// Playground - noun: a place where people can play

import UIKit

class DataSource: NSObject, UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        let style = UITableViewCellStyle.fromRaw(row)
        
        let cell = UITableViewCell(style: style != nil ? style! : .Default, reuseIdentifier: nil)
        
        cell.textLabel!.text = "Hank"
        
        if let detailTextLabel = cell.detailTextLabel {
            detailTextLabel.text = "Detail"
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
}

let ds = DataSource()
let tableView = UITableView(frame: CGRectMake(0, 0, 320, 240), style: .Plain)
tableView.dataSource = ds
tableView.reloadData()

//class DataSource: NSObject, UITableViewDataSource {
//    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
//        return 4
//    }
//    
//    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
//        
//        let row = indexPath.row
//        let style = UITableViewStyle.fromRaw(row)
//        
//        
//        
//        cell.textLabel.text = "Text"
//        
//        if let detailTextLabel = cell.detailTextLabel {
//            detailTextLabel.text = "Detail Text"
//        }
//        
//        return cell
//    }
//}
//
//let ds = DataSource()
//let tableView = UITableView(frame: CGRectMake(0, 0, 320, 240), style: .Plain)
//tableView.dataSource = ds
//tableView.reloadData()
