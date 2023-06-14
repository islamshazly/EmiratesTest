//
//  CardDetailsView.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import SwiftUI

struct CardDetailsView: View {
    
    private var viewModel: CardDetailsViewModelType
    private var card: Card
    init(viewModel: CardDetailsViewModelType) {
        self.viewModel = viewModel
        card = .init(card: viewModel.card)
    }
    
    var body: some View {
        VStack {
            Text(card.desc)
        }.navigationTitle(card.title)
    }
    
    struct Card {
        
        let title: String
        let desc: String
        
        init(card: CardsPresentationModel) {
            self.title = card.title
            self.desc = card.desc
        }
    }
}

struct CardDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailsView(viewModel: CardDetailsViewModel(context: .init(card: .card)))
    }
}
