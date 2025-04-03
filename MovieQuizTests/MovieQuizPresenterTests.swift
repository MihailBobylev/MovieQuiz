//
//  MovieQuizPresenterTests.swift
//  MovieQuizTests
//
//  Created by Михаил Бобылев on 03.04.2025.
//

import XCTest
@testable import MovieQuiz

final class MovieQuizViewControllerMock: MovieQuizViewControllerProtocol {
    func clearImageBorder() {
        //nothing
    }
    
    func show(quiz step: QuizStepViewModel) {
        //nothing
    }
    
    func show(quiz result: QuizResultsViewModel) {
        //nothing
    }
    
    func highlightImageBorder(isCorrectAnswer: Bool) {
        //nothing
    }
    
    func showLoadingIndicator() {
        //nothing
    }
    
    func hideLoadingIndicator() {
        //nothing
    }
    
    func showNetworkError(message: String) {
        //nothing
    }
    
    func disableButtons() {
        //nothing
    }
}

final class MovieQuizPresenterTests: XCTestCase {
    func testPresenterConvertModel() throws {
        let viewControllerMock = MovieQuizViewControllerMock()
        let presenter = MovieQuizPresenter(viewController: viewControllerMock)
        
        let emptyData = Data()
        let question = QuizQuestion(image: emptyData, text: "Question Text", correctAnswer: true)
        let viewModel = presenter.convert(model: question)
        
        XCTAssertNotNil(viewModel.image)
        XCTAssertEqual(viewModel.question, "Question Text")
        XCTAssertEqual(viewModel.questionNumber, "1/10")
    }
}
