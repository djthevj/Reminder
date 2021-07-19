//
//  Reminder+CoreDataProperties.swift
//  Reminders
//
//  Created by Deep Joshi on 4/5/21.
//

import CoreData
//same priporties defined in the enity
extension Reminders {
    @NSManaged var title : String
    @NSManaged var isCompleted : Bool
    @NSManaged var notes : String?
    @NSManaged var dueDate : Date?
    @NSManaged var priority : Int16
    
    
}


