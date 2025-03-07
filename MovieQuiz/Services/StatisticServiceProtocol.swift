//
//  StatisticServiceProtocol.swift
//  MovieQuiz
//
//  Created by Михаил Бобылев on 06.03.2025.
//

import Foundation

protocol StatisticServiceProtocol {
    var gamesCount: Int { get }
    var bestGame: GameResult { get }
    var totalAccuracy: Double { get }
    func store(correct count: Int, total amount: Int)
}
