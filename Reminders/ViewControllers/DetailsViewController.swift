//
//  DetailsViewController.swift
//  Reminders
//
//  Created by Deep Joshi on 12/5/21.
//

import UIKit

class DetailsViewController: UITableViewController {

    @IBOutlet weak var heightContraint: NSLayoutConstraint!
    @IBOutlet weak var secondStackView: UIStackView!
    @IBOutlet weak var lineSeperatorView: UIView!
    @IBOutlet weak var detailTableView: UITableView!
    @IBOutlet weak var calendarView: UIView!
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dateSwitch: UISwitch!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateCardView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dateCardView.addBorder()
        calendarView.isHidden = false
        dateSwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        print("deep")

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


    
    
}

extension DetailsViewController {
    @objc func switchChanged(dateSwitch : UISwitch) {
        if dateSwitch.isOn {
            calendarView.isHidden = true
            NSLayoutConstraint.activate([
//                calendarView.topAnchor.constraint(equalTo: dateSwitch.leadingAnchor, constant: 0.0),
//                calendarView.trailingAnchor.constraint(equalTo: lineSeperatorView.trailingAnchor, constant: 0.0),
//
            ])
//            tableView.beginUpdates()
//            tableView.endUpdates()
            //secondStackView.heightAnchor.constraint(equalToConstant: 0.0)
            
            self.heightContraint.constant = 0.0
            tableView.beginUpdates()
            tableView.endUpdates()
            
            
        }else {
            calendarView.isHidden = false
            
            tableView.beginUpdates()
            tableView.endUpdates()
            self.tableView.reloadData()
        }
    }
}
