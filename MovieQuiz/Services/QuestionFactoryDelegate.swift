//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Михаил Бобылев on 04.03.2025.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
    func didLoadDataFromServer()
    func didFailToLoadData(with error: Error)
}
