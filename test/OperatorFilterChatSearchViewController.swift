//
//  OperatorFilterChatSearchViewController.swift
//  test
//
//  Created by Subharthy Ray on 11/10/17.
//  Copyright © 2017 ChatLead. All rights reserved.
//

import UIKit

class OperatorFilterChatSearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!

    static let operators : [Operators] = [Operators("All", false),Operators("Operator 1", false), Operators("Operator 2", false), Operators("Operator 3", false), Operators("Operator 4", false), Operators("Operator 5", false)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Operators"
        
        self.tableview.allowsMultipleSelection = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OperatorFilterChatSearchViewController.operators.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "SimpleTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! SimpleTableViewCell?
        cell?.titleText.text = OperatorFilterChatSearchViewController.operators[indexPath.row].Name
        cell?.accessoryType = OperatorFilterChatSearchViewController.operators[indexPath.row].isSelected ? .checkmark : .none
        
        if OperatorFilterChatSearchViewController.operators[indexPath.row].isSelected{
            self.tableview.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.none)
        }
        
        cell?.selectionStyle = .none
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        OperatorFilterChatSearchViewController.operators[indexPath.row].isSelected = true
        
        if OperatorFilterChatSearchViewController.operators[indexPath.row].Name.lowercased() == "all" {
            for i in OperatorFilterChatSearchViewController.operators {
                //if !(i.Name.lowercased() == "all"){
                    i.isSelected = true
                //}
            }
        }
//        }else{
//            for i in OperatorFilterChatSearchViewController.operators {
//                if i.Name.lowercased() == "all"{
//                    i.isSelected = false
//                }
//            }
//        }
        
        self.tableview.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
        
        OperatorFilterChatSearchViewController.operators[indexPath.row].isSelected = false
        
        if OperatorFilterChatSearchViewController.operators[indexPath.row].Name.lowercased() == "all" {
            for i in OperatorFilterChatSearchViewController.operators {
                //if !(i.Name.lowercased() == "all"){
                i.isSelected = false
                //}
            }
        }else {
            var noneSelected : Bool = true
            
            for i in OperatorFilterChatSearchViewController.operators{
                if i.isSelected && !(OperatorFilterChatSearchViewController.operators[indexPath.row].Name.lowercased() == "all"){
                    noneSelected = false
                }
            }
            
            if noneSelected {
                for i in OperatorFilterChatSearchViewController.operators {
                    if i.Name.lowercased() == "all"{
                        i.isSelected = false
                    }
                }
            }
        }
        
        self.tableview.reloadData()
    }
    
}
