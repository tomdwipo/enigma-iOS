//
//  HomeContainerViewController.swift
//  Enigma
//
//  Created by Tommy on 04/01/22.
//

import UIKit

class HomeContainerViewController: UIViewController {
 


    @IBOutlet weak var tableView: UITableView!
    
    let titles = ["okegfsdkjhgjfdskhjfdshjfhjdfg;hfgnhjdnfgjhnjdfgnhndfghnfghjdfgjhjghdfj;ghsfd", "dua", "33"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: String(describing: HomeViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HomeViewCell.self))
        tableView.register(UINib(nibName: String(describing: NewsViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: NewsViewCell.self))
        
//        tableView.register(UINib(nibName: String(describing: HeaderTableView.self), bundle: nil), forHeaderFooterViewReuseIdentifier: String(describing: HeaderTableView.self))
        tableView.register(HeaderTableView.self, forHeaderFooterViewReuseIdentifier: String(describing: HeaderTableView.self))
    }
}


extension HomeContainerViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier:  String(describing: NewsViewCell.self), for: indexPath) as! NewsViewCell
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier:  String(describing: HomeViewCell.self), for: indexPath) as! HomeViewCell
            cell.titleContent.text = titles[indexPath.row]
            let tap = UIGestureRecognizer(target: self, action: #selector(imageTap(_:)))
            cell.imageContent.addGestureRecognizer(tap)
            cell.imageContent.isUserInteractionEnabled = true
            return cell
        }
     
    }
    
    @objc func imageTap(_ sender: UITapGestureRecognizer){
        print("test")
    }
    
    
}

extension HomeContainerViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 400
//    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: String(describing: HeaderTableView.self)) as! HeaderTableView
       
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 90
    }
    
 
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "News For you"
//
//    }
    
//    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        return "News For you"
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(titles[indexPath.row])
//        let vc = HostViewController()
//        present(vc, animated: true, completion: nil)
        
    }
}
