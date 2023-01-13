//
//  Todo.swift
//  Projet_Final
//
//  Created by Tom on 12/01/2023.
//

import Foundation


class Todo{
    var titre : String
    var description : String
    var date : String
    var etat : Bool
    
    init(titre : String, description : String, date : String){
        self.titre = titre
        self.description = description
        self.date = date
        self.etat = false
    }
}
