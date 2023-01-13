//
//  AddViewController.swift
//  Projet_Final
//
//  Created by Tom on 12/01/2023.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var myTitreEdit: UITextField!
    @IBOutlet weak var myDescriptionEdit: UITextField!
    @IBOutlet weak var myDateEdit: UIDatePicker!
    var todotemp : Todo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todotemp = Todo(titre: "", description: "", date: "")
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func UpdateTitle(_ sender: Any) {
        todotemp!.titre = myTitreEdit.text!
    }
    
    

    @IBAction func UpdateDescript(_ sender: Any) {
        todotemp?.description = myDescriptionEdit.text!
    }
    
    

    @IBAction func UpdateDate(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        todotemp?.date = dateFormatter.string(from: myDateEdit.date)
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
