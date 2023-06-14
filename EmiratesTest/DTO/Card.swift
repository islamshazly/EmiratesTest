//
//  Card.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import Foundation

struct CardDTO {
    
    let id: Int
    let title: String
    let desc: String
}


extension CardDTO {
    
    static let cards : [CardDTO] = [.init(id: 1,
                                          title: "Title 1",
                                          desc: "description"),
                                    .init(id: 2,
                                          title: "Title 2",
                                          desc: "description"),
                                    .init(id: 3,
                                          title: "Title 3",
                                          desc: "description"),
                                    .init(id: 4,
                                          title: "Title 4",
                                          desc: "description")]
}
