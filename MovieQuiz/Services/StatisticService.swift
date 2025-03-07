//
//  StatisticService.swift
//  MovieQuiz
//
//  Created by Михаил Бобылев on 06.03.2025.
//

import Foundation

final class StatisticService: StatisticServiceProtocol {
    private enum Keys: String {
        case correct
        case total
        case date
        case gamesCount
        case correctAnswers
    }
    
    private let storage: UserDefaults = .standard
    
    var gamesCount: Int {
        get {
            storage.integer(forKey: Keys.gamesCount.rawValue)
        }
        set {
            storage.set(newValue, forKey: Keys.gamesCount.rawValue)
        }
    }
    
    var bestGame: GameResult {
        get {
            let correct = storage.integer(forKey: Keys.correct.rawValue)
            let total = storage.integer(forKey: Keys.total.rawValue)
            let date = storage.object(forKey: Keys.date.rawValue) as? Date ?? Date()
            let gameResult: GameResult = .init(correct: correct, total: total, date: date)
            return gameResult
        }
        set {
            storage.set(newValue.correct, forKey: Keys.correct.rawValue)
            storage.set(newValue.total, forKey: Keys.total.rawValue)
            storage.set(newValue.date, forKey: Keys.date.rawValue)
        }
    }
    
    var totalAccuracy: Double {
        guard gamesCount > 0 else { return 0.0 }
        return Double(correctAnswers) / Double(gamesCount * 10) * 100
    }
    
    private var correctAnswers: Int {
        get {
            storage.integer(forKey: Keys.correctAnswers.rawValue)
        }
        set {
            storage.set(newValue, forKey: Keys.correctAnswers.rawValue)
        }
    }
    
    func store(correct count: Int, total amount: Int) {
        gamesCount += 1
        let gameResult: GameResult = .init(correct: count, total: amount, date: Date())
        if gameResult.isBetterThan(bestGame) {
            bestGame = gameResult
        }
        correctAnswers += count
    }
}
