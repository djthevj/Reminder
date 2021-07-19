//
//  ReminderCellTableViewCell.swift
//  Reminders
//
//  Created by Deep Joshi on 3/5/21.
//

import UIKit

class ReminderCellTableViewCell: UITableViewCell {
    
    static let cellIdentifier = String(describing: "ReminderCell")

    @IBOutlet weak var reminderLabel: UILabel!
    @IBOutlet weak var reminderImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configureCell (viewModel : ReminderListViewModel) {
        reminderLabel.text = viewModel.reminderLabel
        reminderImageView.image = UIImage(systemName: "list.dash")
    }
    

}
