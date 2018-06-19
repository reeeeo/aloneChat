import UIKit
import CoreData
import JSQMessagesViewController.JSQMessage

class CDMessageHistory {
  static let messageHistory = CDMessageHistory()
  private var appDelegate: AppDelegate!
  private var manageContext:NSManagedObjectContext!
  private var messageHistory:NSEntityDescription!
  
  private init() {
    appDelegate = UIApplication.shared.delegate as! AppDelegate
    manageContext = appDelegate.persistentContainer.viewContext
    messageHistory = NSEntityDescription.entity(forEntityName: "MessageHistory", in: manageContext)
  }
  
  func load() -> [MessageHistory] {
    let fetchRequest: NSFetchRequest<MessageHistory> = MessageHistory.fetchRequest()
    do {
      return try manageContext.fetch(fetchRequest)
    } catch {
      fatalError("ERROR: Cannot load MessageHistory \(error)")
    }
  }
  
  func add(_ message: JSQMessage) {
    let newRecord = NSManagedObject(entity: messageHistory!, insertInto: manageContext) as? MessageHistory
    newRecord?.setValue(message.senderId, forKey: "senderId")
    newRecord?.setValue(message.senderDisplayName, forKey: "senderDisplayName")
    newRecord?.setValue(message.text, forKey: "text")
    do {
      try manageContext.save()
    } catch {
      fatalError("ERROR: Cannot add MessageHistory. message = \(message), error = \(error)")
    }
  }
}
