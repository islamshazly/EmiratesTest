//
//  CardsListFlowController.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import Foundation

struct CardsListFlowController: Flowable {
    
    var horizontalFlow: HorizontalFlowType
    var verticalFlow: VerticalFlowType
    
    func handle(_ route: CardsListRoute) {
        switch route {
        case let .details(context):
            let viewController = Builder.Cards.Details.make(context: context)
            horizontalFlow.navigate(to: viewController, animated: true)
        }
    }
}
