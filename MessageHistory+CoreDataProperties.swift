//
//  MessageHistory+CoreDataProperties.swift
//  
//
//  Created by okumura reo on 2018/06/18.
//
//

import Foundation
import CoreData


extension MessageHistory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MessageHistory> {
        return NSFetchRequest<MessageHistory>(entityName: "MessageHistory")
    }

    @NSManaged public var senderId: String?
    @NSManaged public var text: String?
    @NSManaged public var senderDisplayName: String?

}
