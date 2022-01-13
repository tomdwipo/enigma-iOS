//
//  ListDataViewController.swift
//  Enigma
//
//  Created by Tommy on 13/01/22.
//

import UIKit
import CoreData

class ListDataViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var datas: [String] = []
    
    var people: [NSManagedObject] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "List Data"
        tableView.register(UITableViewCell.self,
                            forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetch()
    }
    

    @IBAction func addItem(_ sender: Any) {
        let alert = UIAlertController(title: "New Data",
                                        message: "Add a new data",
                                        preferredStyle: .alert)
          
          let saveAction = UIAlertAction(title: "Save",
                                         style: .default) {
            [unowned self] action in
                                          
            guard let textField = alert.textFields?.first,
              let dataToSave = textField.text else {
                return
            }
            
              self.save(name: dataToSave)
            self.tableView.reloadData()
          }
          
          let cancelAction = UIAlertAction(title: "Cancel",
                                           style: .cancel)
          
          alert.addTextField()
          
          alert.addAction(saveAction)
          alert.addAction(cancelAction)
          
          present(alert, animated: true)
    }
    
    func save(name: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let manageContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "CoreData", in: manageContext)!
        
        let person = NSManagedObject(entity: entity, insertInto: manageContext)
        
        person.setValue(name, forKey: "name")
        
        do {
            try manageContext.save()
            people.append(person)
        } catch let error as NSError {
            print("Could not Save. \(error), \(error.userInfo)")
        }
    }
    
    func fetch(){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let manageContext = appDelegate.persistentContainer.viewContext

        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "CoreData")
        
        do {
            people = try manageContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    
    func delete(name: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }

        let manageContext = appDelegate.persistentContainer.viewContext

        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "CoreData")
        fetchRequest.predicate = NSPredicate(format: "name = %@", name)
        
        do {
            let object = try manageContext.fetch(fetchRequest)
            let objectToDelete = object[0]
            manageContext.delete(objectToDelete)
            try manageContext.save()
        } catch let error as NSError {
            print("Could not delete. \(error), \(error.userInfo)")
        }
        
    }
    
}

extension ListDataViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = people[indexPath.row]
        cell.textLabel?.text = person.value(forKeyPath: "name") as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let person = people[indexPath.row]
            self.delete(name: person.value(forKeyPath: "name") as!  String)
            self.people.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
}
