//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Михаил Бобылев on 05.03.2025.
//

import UIKit

final class AlertPresenter {
    weak var movieQuizViewController: MovieQuizViewController?
    
    func showResult(alertModel: AlertModel) {
        let alert = UIAlertController(
            title: alertModel.title,
            message: alertModel.message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(title: alertModel.buttonText, style: .default) { _ in
            alertModel.completion()
        }
        
        alert.addAction(action)
        movieQuizViewController?.present(alert, animated: true, completion: nil)
    }
}
