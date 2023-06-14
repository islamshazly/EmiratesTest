//
//  CardsListViewModel.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import Foundation

enum CardsListRoute {
    
    case details(CardDetailsViewModel.Context)
}

enum CardsListStatus {
    
    case loading
    case loaded
}

protocol CardsListViewModelType {
    
    typealias Route = CardsListRoute
    typealias State = CardsListStatus
    
    var route: Completion<Route> { get set }
}


final class CardsListViewModel: CardsListViewModelType, ObservableObject {
    
    var route: Completion<Route> = { _ in }
    @Published
    var state: State = .loading
    var cards: [CardsPresentationModel] = [CardsPresentationModel]()
    
    init() {
        CardDTO.cards.forEach({ card in
            let item = CardsPresentationModel(card: card, completion: { [weak self] in
                DispatchQueue.main.async {                
                    self?.route(.details(.init(card: .init(card: card))))
                }
            })
            self.cards.append(item)
            state = .loaded
        })
    }
}
