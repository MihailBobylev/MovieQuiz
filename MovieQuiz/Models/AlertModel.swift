//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by Михаил Бобылев on 05.03.2025.
//

import Foundation

struct AlertModel {
    var title: String
    var message: String
    var buttonText: String
    var completion: () -> Void
}
