//
//  CardDetailsBuilder.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import SwiftUI

extension Builder.Cards.Details {
    
    static func make(context: CardDetailsViewModel.Context) -> UIViewController {
        let viewModel = CardDetailsViewModel(context: context)
        let view = CardDetailsView(viewModel: viewModel)
        let viewController = UIHostingController(rootView: view)
        
        return viewController
    }
}
