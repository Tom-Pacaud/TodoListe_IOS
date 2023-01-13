//
//  ViewController.swift
//  Projet_Final
//
//  Created by Tom on 10/01/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTodoFiltered.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TodoTableViewCell
        
        let row = indexPath.row
        cell.Titre.text = myTodoFiltered[row].titre
        cell.Description.text = myTodoFiltered[row].description
        if myTodoFiltered[row].etat {
            cell.Etat.setImage(UIImage(systemName: "checkmark.rectangle.fill"), for: .normal)
        }
        else {
            cell.Etat.setImage(UIImage(systemName: "checkmark.rectangle"), for: .normal)
        }
        
        
        
        return cell
    }
    

    
    var myTodo : [Todo] = []
    var myTodoFiltered : [Todo] = []
    
    var j = 0
    
    @IBOutlet weak var myTableView:
        UITableView!
    
    @IBOutlet weak var Recherche: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        myTodoFiltered = myTodo
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailsViewController {
            let row = myTableView.indexPathForSelectedRow!.row
            vc.todo = myTodoFiltered[row]
        }
    }
    
    @IBAction func Add(_ unwindSegue: UIStoryboardSegue) {
        if let vc = unwindSegue.source as? AddViewController {
            if vc.todotemp != nil {
                myTodoFiltered.append(vc.todotemp!)
                myTodo = myTodoFiltered
                myTableView.reloadData()
            }
        }
    }
    
    @IBAction func destroy(_ unwindSegue: UIStoryboardSegue) {
        if unwindSegue.source is DetailsViewController {
            let row = myTableView.indexPathForSelectedRow!.row
            myTodoFiltered.remove(at: row)
            myTodo = myTodoFiltered
            myTableView.reloadData()
        }
        // Use data from the view controller which initiated the unwind segue
    }
    
    @IBAction func chnageEtat(_ unwindSegue: UIStoryboardSegue) {
        if unwindSegue.source is DetailsViewController {
            let row = myTableView.indexPathForSelectedRow!.row
            if myTodoFiltered[row].etat {
                myTodoFiltered[row].etat = false
            }
            else {
                myTodoFiltered[row].etat = true
            }
            myTableView.reloadData()
        }

    }
    
    
    @IBAction func Recherche(_ sender: Any) {
        if Recherche.text == "" {
            myTodoFiltered = myTodo
        } else {
            myTodoFiltered = myTodoFiltered.filter {
                $0.titre.contains(Recherche.text!)
            }
        }
        myTableView.reloadData()
    }
    
    
}

