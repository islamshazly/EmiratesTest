//
//  CardsListView.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import SwiftUI

struct CardsListView: View {
    
    @ObservedObject
    var viewModel: CardsListViewModel
    
    init(viewModel: CardsListViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        switch viewModel.state {
        case .loaded:
            CardsList(cards: viewModel.cards)
                .navigationTitle("Cards")
        case .loading:
            LoaderView()
        }
    }
}

struct CardsList: View {
    
    var cards: [Card]
    
    init(cards: [CardsPresentationModel]) {
        self.cards = cards.map(Card.init)
    }
    
    var body: some View {
        List {
            ForEach(cards) { card in
                Button {
                    card.tapAction?()
                } label: {
                    Text(card.title)
                        .font(.callout)
                        .foregroundColor(.black)
                }
            }
        }
    }
    
    struct Card: Identifiable {
        let id: Int
        let title: String
        let desc: String
        let tapAction: VoidCompletion?
        
        init(card: CardsPresentationModel) {
            id = card.id
            title = card.title
            desc = card.desc
            tapAction = card.tapAction
        }
    }
}
