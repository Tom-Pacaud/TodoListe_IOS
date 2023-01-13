//
//  DetailsViewController.swift
//  Projet_Final
//
//  Created by Tom on 12/01/2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var myTitre: UILabel!
    @IBOutlet weak var myDescription: UILabel!
    @IBOutlet weak var myDate: UILabel!
    @IBOutlet weak var myCheck: UIButton!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let todotemp = todo {
            myTitre.text = todotemp.titre
            myDescription.text = todotemp.description
            myDate.text = todotemp.date
            if todotemp.etat {
                myCheck.setImage(UIImage(systemName: "checkmark.rectangle.fill"), for: .normal)
            }
            else {
                myCheck.setImage(UIImage(systemName: "checkmark.rectangle"), for: .normal)
            }
        }
        else {
            myTitre.text = "Erreur"
            myDescription.text = "Erreur"
            myDate.text = "Erreur"
        }
        // Do any additional setup after loading the view.
    }
    
    var todo : Todo?
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
