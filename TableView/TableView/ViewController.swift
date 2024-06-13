//
//  ViewController.swift
//  TableView
//
//  Created by Administrador  on 30/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let appleDevices = Devices()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = editButtonItem
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tableView.setEditing(editing, animated: true)
    }

    @IBAction func didTapAdd(_ sender: Any) {
        let newDevice = AppleDevice(name: "iPad", description: "Apple`s iPad", systemImageName: "ipad")
        appleDevices.addDevice(newDevice)
        tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let content = appleDevices.getDevice(from: indexPath)
        content.isSelected.toggle()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let contextItem = UIContextualAction(style: .destructive, title: "Delete") { contextualAction, view, boolValue in
            self.appleDevices.removeDevice(from: indexPath)
            self.tableView.reloadData()
        }
        
        let swipeActions = UISwipeActionsConfiguration(actions: [contextItem])
        
        return swipeActions
        
    }
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell-identifier", for: indexPath)
        
        let content = appleDevices.getDevice(from: indexPath)
        cell.textLabel?.text = content.name
        cell.detailTextLabel?.text = content.description
        cell.imageView?.image = UIImage(systemName: content.systemImageName)
        cell.accessoryType = content.isSelected ? .checkmark : .none
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appleDevices.allDevices.count
    }
    
}
