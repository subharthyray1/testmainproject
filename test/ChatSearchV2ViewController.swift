//
//  FilterViewController.swift
//  CarChat24
//
//  Created by Subharthy Ray on 14/08/17.
//  Copyright © 2017 ChatLead.com. All rights reserved.
//

import UIKit
import CoreData



public enum ChatSearchCategory: String{
    case DateRange = "Date Range"
    case ChatStatus = "Chat Status"
    case LeadStatus = "Locations"
    case Operators = "Operators"
    case Others = "Others"
}


class ChatSearchV2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var rows : [ChatSearchCategory] = [.DateRange, .Operators, .ChatStatus, .LeadStatus, .Others]
    
    
    @IBOutlet weak var tableview: UITableView!

    
    let ChatStatuses : [String] = ["Any", "OnGoing", "Ended"]
    
    
    let LeadTypes : [String] = ["Any", "E-Lead", "P-Lead", "VIP-Lead", "Query"]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.title = "Chat Search"
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableview.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = rows[indexPath.row]
        
        if row == .DateRange {
            
            let cellIdentifier = "ChatSearchTableViewCell"
            
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ChatSearchTableViewCell?
        
            let subStr : String = "Any"
            
            cell?.lblFilterTitle.text = row.rawValue
            cell?.lblFilterSubTitle.text = subStr
        
            return cell!
            
        }else if row == .Operators {
            
            let cellIdentifier = "ChatSearchTableViewCell"
            
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ChatSearchTableViewCell?
            
            var subStr : String = "Any"
            
            cell?.lblFilterTitle.text = row.rawValue
            cell?.lblFilterSubTitle.text = subStr
            
            return cell!
            
        }else if row == .ChatStatus {
            
            let cellIdentifier = "ChatSearchTableViewCell"
            
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ChatSearchTableViewCell?
            
            var subStr : String = "Any"
            
            
            cell?.lblFilterTitle.text = row.rawValue
            cell?.lblFilterSubTitle.text = subStr
            
            return cell!
            
        }else if row == .LeadStatus {
            
            let cellIdentifier = "ChatSearchTableViewCell"
            
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ChatSearchTableViewCell?
            
            var subStr : String = "Any"
            
            
            cell?.lblFilterTitle.text = row.rawValue
            cell?.lblFilterSubTitle.text = subStr
            
            return cell!
            
        }else if row == .Others {
            
            let cellIdentifier = "ChatSearchTableViewCell"
            
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ChatSearchTableViewCell?
            
            var subStr : String = "Any"
            
            cell?.lblFilterTitle.text = row.rawValue
            
            cell?.lblFilterSubTitle.text = subStr
            
            return cell!
            
        }else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = rows[indexPath.row]
        
        if row == .DateRange {
            
            let pageViewController = (self.storyboard!.instantiateViewController(withIdentifier: "DateRangeChatSearchViewController") as! DateRangeChatSearchViewController)

            self.navigationController!.pushViewController(pageViewController, animated:true)
            
        }else if row == .Operators {
            
            let pageViewController = (self.storyboard!.instantiateViewController(withIdentifier: "OperatorFilterChatSearchViewController") as! OperatorFilterChatSearchViewController)
            
            self.navigationController!.pushViewController(pageViewController, animated:true)
            
        }else if row == .ChatStatus {
            
            
            
        }else if row == .LeadStatus {
            
            
            
        }else if row == .Others {
            
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows.count
    }
    
}
