//
//  ReminderTableViewController.swift
//  Reminders
//
//  Created by Deep Joshi on 5/5/21.
//

import UIKit

class ReminderTableViewController: UITableViewController {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleView: UITextView!
    @IBOutlet weak var notesView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.addBorder()
        self.tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return 1
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
       // view.backgroundColor = .systemGray6
        view.tintColor = .systemGray6
    }
  

}
