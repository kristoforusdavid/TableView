//
//  ViewController.swift
//  TableView
//
//  Created by Kristoforus David on 07/01/20.
//  Copyright © 2020 Kristoforus David. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var nameArray = ["Jasmine","Cindy","Vebby"]
    var numberArray = [1234567890,0987654321,1029384756]
   
    //array of object
    var contact = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        for i in 0..<nameArray.count{
            let data = Contact(name: nameArray[i], number: numberArray[i])
            contact.append(data)
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
        
        cell?.nameLabel.text = contact[indexPath.row].name
        cell?.numberLabel.text = "\(contact[indexPath.row].number)"
        
        return cell!
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 80.0
//    }
}

