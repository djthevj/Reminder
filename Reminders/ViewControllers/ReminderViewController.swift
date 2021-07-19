//
//  ReminderViewController.swift
//  Reminders
//
//  Created by Deep Joshi on 26/4/21.
//

import UIKit

class ReminderViewController: UIViewController {

    @IBOutlet weak var reminderTableView: UITableView!
    
    @IBOutlet weak var navigationTitle: UINavigationItem!
    
    var reminderListViewModel : ReminderListViewModel?
    override func viewDidLoad() {
       
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        setupReminderNavigationBar()
        self.reminderTableView.delegate = self
        self.reminderTableView.dataSource = self
        
        reminderListViewModel = ReminderListViewModel()
        
    }
    

    @IBAction func newReminderButtonTapped(_ sender: Any) {
        print("Deep")
        
    }
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        
    }
    
}

extension ReminderViewController {
    private func setupReminderNavigationBar() {
        self.navigationTitle.title = "Reminders"
    }
}

///MARK Data Delegates
//HEADER/FOOOTER/SECTIONS
extension ReminderViewController : UITableViewDelegate {
    
}

///MARK DATA SOURCE
extension ReminderViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminderListViewModel?.totalCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reminderCell = reminderTableView.dequeueReusableCell(withIdentifier:ReminderCellTableViewCell.cellIdentifier , for: indexPath) as! ReminderCellTableViewCell
        if let reminderListViewModel = reminderListViewModel {
            reminderCell.configureCell(viewModel: reminderListViewModel)
        }
       
        
        return reminderCell
    }
    
    
}
