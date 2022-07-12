//
//  ViewController.swift
//  tables2
//
//  Created by Ammad on 11/07/2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    

  
    @IBOutlet weak var tableview: UITableView!
    var contacts=[ContactModel("Unknown.jpeg", "Ammad", "Khan", "0331"),ContactModel("Unknown.jpeg", "Ammad", "Khan", "0331"),ContactModel("Unknown.jpeg", "Ammad", "Khan", "0331")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.dataSource=self
        tableview.delegate=self
        tableview.rowHeight =  UITableView.automaticDimension
        tableview.estimatedRowHeight = UITableView.automaticDimension

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier:
                                                        "contactCell", for: indexPath) as? TablesCell {
        let extractedContact = contacts[indexPath.row]
        //call the update view function from Contactell
            cell.updateview(extractedContact)
        return cell
        }
        else {
            return TablesCell()
            
        }
        
        
        
    }

}

