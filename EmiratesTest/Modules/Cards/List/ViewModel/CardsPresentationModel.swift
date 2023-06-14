//
//  CardsPresentationModel.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import Foundation

struct CardsPresentationModel {
    let id: Int
    let title: String
    let desc: String
    var tapAction: VoidCompletion?
    
    init(card: CardDTO,
         completion: VoidCompletion? = nil) {
        id = card.id
        title = card.title
        desc = card.desc
        tapAction = completion
    }
}

extension CardsPresentationModel {
    
    static let card: CardsPresentationModel = .init(card: .cards.first!)
}
