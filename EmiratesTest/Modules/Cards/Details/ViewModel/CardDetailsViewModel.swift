//
//  CardDetailsViewModel.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import Foundation

protocol CardDetailsViewModelType {
    
    var card: CardsPresentationModel { get }
}

extension CardDetailsViewModel {
    
    struct Context {
        let card: CardsPresentationModel
    }
}

final class CardDetailsViewModel: CardDetailsViewModelType {
    
    var card: CardsPresentationModel
    
    init(context: Context) {
        self.card = context.card
    }
}
