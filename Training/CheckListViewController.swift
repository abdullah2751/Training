//
//  CheckListClassTableViewController.swift
//  Training
//
//  Created by Игорь Александров on 09.06.2019.
//  Copyright © 2019 Alexandroff. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

	var row0Item: ChecklistItem
	
	required init?(coder aDecoder: NSCoder) {
		row0Item = ChecklistItem()
		row0Item.text = "Take a jog"
		super.init(coder: aDecoder)
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 5
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let item = tableView.dequeueReusableCell(withIdentifier: "checklistItem", for: indexPath)
		
		if let label = item.viewWithTag(1000) as? UILabel{
			if indexPath.row == 0 {
				label.text = row0Item.text
			}else if indexPath.row % 5 == 1 {
				label.text = "Watch a movie"
			}else if indexPath.row % 5 == 2 {
				label.text = "Code an app"
			}else if indexPath.row % 5 == 3 {
				label.text = "Walk the dog"
			}else if indexPath.row % 5 == 4 {
				label.text = "Study design patterns"
			}
		}
		
		return item
	}
	
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		if let cell = tableView.cellForRow(at: indexPath){
			if indexPath.row == 0{
				if row0Item.checked{
					cell.accessoryType = .none
					row0Item.checked = !row0Item.checked
					print("Checked")
				}else{
					cell.accessoryType = .checkmark
					row0Item.checked = !row0Item.checked
					print("Unchecked")
				}
			}
			if cell.accessoryType == .none {
				cell.accessoryType = .checkmark
			}else{
				cell.accessoryType = .none
			}
			tableView.deselectRow(at: indexPath, animated: true)
		}
	}
	
	
}
