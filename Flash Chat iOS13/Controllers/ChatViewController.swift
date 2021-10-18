//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Ferdous Mahmud Akash on 11/10/2021.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    
    var messages: [Message] = [
        Message(sender: "user1@gmail.com", body: "Hay...."),
        Message(sender: "user2@gmail.com", body: "Hello...."),
        Message(sender: "user1@gmail.com", body: "Maybe ami onek kisu plan korchi and kuje kuje bar o kortechi but hbe ki na jani na.Amni sir ra je vabe bole 15 din a app developer hole vlo hoi tader")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "⚡️FlashChat"
        navigationItem.hidesBackButton = true
        tableView.dataSource = self
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutButtonTapped(_ sender: UIBarButtonItem) {
    do {
        try Auth.auth().signOut()
        
        // Navigate to WelcomeViewController
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
        print("Error signing out: %@", signOutError)
    }
      
    }
    
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        as! MessageCell
        cell.lable.text = messages[indexPath.row].body
        return cell
    }
    
    
}
