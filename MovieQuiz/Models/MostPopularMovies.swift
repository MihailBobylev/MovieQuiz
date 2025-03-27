//
//  MostPopularMovies.swift
//  MovieQuiz
//
//  Created by Михаил Бобылев on 21.03.2025.
//

import Foundation

struct MostPopularMovies: Codable {
    let errorMessage: String
    let items: [MostPopularMovie]
}
