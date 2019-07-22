//
//  ViewController.swift
//  Accelmrator-Tron
//
//  Created by Islam Swira on 7/22/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import UIKit

class listItemController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "prallexCell", for: indexPath)as? prallexCell
            else {return UITableViewCell()}
        cell.initCell(withImage: imageArray[indexPath.row]! , andDescription: namesArray[indexPath.row])
        return cell
        
    }


}

