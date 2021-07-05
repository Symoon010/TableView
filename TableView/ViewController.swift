//
//  ViewController.swift
//  TableView
//
//  Created by BS-125 on 5/7/21.
//

import UIKit

class ViewController: UIViewController  {

    @IBOutlet weak var TableView: UITableView!
    var arr = ["Red","Green","Blue","Black"]
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension  ViewController:  UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
}
