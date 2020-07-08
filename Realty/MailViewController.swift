//
//  MailViewController.swift
//  Realty
//
//  Created by Mikhail on 2020/07/07.
//  Copyright © 2020 Mikhail Ivanov. All rights reserved.
//

import UIKit

let restaurantNames = [
    "Burger Heroes",
    "Kitchen",
    "Bonsai",
    "Дастархан",
    "Индокитай",
    "X.O",
    "Балкан Гриль"
]

class MailViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    // Колличество строк в таблицк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count;
    }

    
    // Конфигурация ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
