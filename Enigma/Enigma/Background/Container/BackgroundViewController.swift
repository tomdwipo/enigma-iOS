//
//  BackgroundViewController.swift
//  Enigma
//
//  Created by RATAMATE on 12/01/22.
//

import UIKit

class BackgroundViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    let menu : [String] = ["Audio", "Location"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}

extension BackgroundViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = menu[indexPath.row]
        return cell ?? UITableViewCell()
        
    }
    
    
}

extension BackgroundViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            self.navigationController?.pushViewController(AudioViewController(), animated: true)
        }else{
            self.navigationController?.pushViewController(LocationViewController(), animated: true)

        }
    }
}
