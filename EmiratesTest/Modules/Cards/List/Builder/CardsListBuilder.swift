//
//  CardsListBuilder.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import SwiftUI

extension Builder.Cards {
    
    static func make() -> UIViewController {
        let viewModel = CardsListViewModel()
        let view = CardsListView(viewModel: viewModel)
        let viewController = UIHostingController(rootView: view)
        let navigationController = UINavigationController(rootViewController: viewController)
        let flowController = CardsListFlowController(horizontalFlow: navigationController.horizontalNavigationFlow,
                                                     verticalFlow: navigationController.verticalNavigationFlow)
        viewModel.route = flowController.handle
        
        return navigationController
    }
}
