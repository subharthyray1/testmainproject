//
//  ChatSearchViewController.swift
//  CarChat24
//
//  Created by Subharthy Ray on 09/10/17.
//  Copyright © 2017 ChatLead.com. All rights reserved.
//

import UIKit

class DateRangeChatSearchViewController: UIViewController, GMDatePickerDelegate {

    @IBOutlet weak var txtStartDate: UITextField!
    @IBOutlet weak var txtEndDate: UITextField!
    
//    @IBOutlet weak var switchOperator: UISwitch!
//    @IBOutlet weak var lblSpecificOp: UILabel!
//    @IBOutlet weak var lblAllOp: UILabel!
//    @IBOutlet weak var btnSelectOp: UIButton!
//
//    @IBOutlet weak var txtOperator: UITextField!
//
//    @IBOutlet weak var switchOngoing: UISwitch!
//    @IBOutlet weak var switchEnded: UISwitch!
//    @IBOutlet weak var switchLead: UISwitch!
//    @IBOutlet weak var switchQuery: UISwitch!
//
//    @IBOutlet weak var txtVisitorName: UITextField!
//    @IBOutlet weak var txtChatTranscript: UITextField!
//
//    @IBOutlet weak var btnSubmit: UIBarButtonItem!
    
    var picker = GMPicker()
    var datePicker = GMDatePicker()
    var dateFormatter = DateFormatter()
    static var isStartDatePicked : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtStartDate.isEnabled = false
        txtEndDate.isEnabled = false
        

        dateFormatter.dateFormat = "MMM dd, yyyy"
        setupDatePicker()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func selectStartDate(_ sender: UIButton) {
        DateRangeChatSearchViewController.isStartDatePicked = true
        datePicker.show(inVC: self)
    }
    
    @IBAction func selectEndDate(_ sender: UIButton) {
        DateRangeChatSearchViewController.isStartDatePicked = false
        datePicker.show(inVC: self)
    }
    
    
    func gmDatePicker(_ gmDatePicker: GMDatePicker, didSelect date: Date){
        if DateRangeChatSearchViewController.isStartDatePicked {
            self.txtStartDate.text = dateFormatter.string(from: date)
        }else{
            self.txtEndDate.text = dateFormatter.string(from: date)
        }
    }
    
    func gmDatePickerDidCancelSelection(_ gmDatePicker: GMDatePicker) {
        
    }
    
    fileprivate func setupDatePicker() {
        
        datePicker.delegate = self
        
        datePicker.config.startDate = Date()
        
        datePicker.config.animationDuration = 0.5
        
        datePicker.config.cancelButtonTitle = "Cancel"
        
        datePicker.config.confirmButtonTitle = "Confirm"
        
        datePicker.config.contentBackgroundColor = UIColor(red: 253/255.0, green: 253/255.0, blue: 253/255.0, alpha: 1)
        datePicker.config.headerBackgroundColor = UIColor(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1)
        datePicker.config.confirmButtonColor = UIColor.black
        datePicker.config.cancelButtonColor = UIColor.black
        
    }

}
