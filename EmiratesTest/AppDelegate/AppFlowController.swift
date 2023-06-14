//
//  AppFlowController.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import UIKit

final class AppFlowController {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewController = Builder.Cards.make()
        window.rootViewController = viewController
    }
}
