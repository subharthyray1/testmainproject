//
//  DownloadChatsModels.swift
//  test
//
//  Created by Subharthy Ray on 20/10/17.
//  Copyright © 2017 ChatLead. All rights reserved.
//

import Foundation


class Operators {
    var Name : String = ""
    var isSelected : Bool = false
    
    init(_ name : String,_ isSelected : Bool) {
        self.Name = name
        self.isSelected = isSelected
    }
    
}


struct ChatStatus : OptionSet {
    let rawValue: Int
    static let InChat  = ChatStatus(rawValue: 1 << 2)
    static let Ended = ChatStatus(rawValue: 1 << 3)
}

struct LeadType : OptionSet {

    let rawValue: Int
    
    static let Elead  = LeadType(rawValue: 1 << 1)
    static let Plead = LeadType(rawValue: 1 << 2)
    static let VIPlead  = LeadType(rawValue: 1 << 3)
    static let Query = LeadType(rawValue: 1 << 4)

}

class SearchChats {
    
    var fromDate : Date? = nil
    var toDate : Date? = nil
    var operators : [String] = []
    var chatStatus : ChatStatus = []
    var leadTypes : LeadType = []
    var visitorName : String = ""
    var chatTranscript : String = ""
    var location : String = ""
    
}
