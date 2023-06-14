//
//  CardsListViewModelTest.swift
//  EmiratesTestTests
//
//  Created by Islam Elshazly on 14/06/2023.
//

import XCTest
@testable
import EmiratesTest

final class CardsListViewModelTest: XCTestCase {
    
    var viewModel: CardsListViewModel!
    
    func test_ViewModel_Route() {
        `viewModel` = CardsListViewModel()
        guard let card = viewModel.cards.first else { return }
        card.tapAction?()
        
        let detailsRouteExpectation = XCTestExpectation()
        
        viewModel.route = { route in
            switch route  {
            case .details:
                detailsRouteExpectation.fulfill()
            }
        }
        wait(for: [detailsRouteExpectation], timeout: 1, enforceOrder: true)
    }
}
