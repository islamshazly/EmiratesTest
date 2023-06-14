//
//  Flowable.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import Foundation

protocol Flowable {

    associatedtype Route

    var horizontalFlow: HorizontalFlowType { get }
    var verticalFlow: VerticalFlowType { get }

    func handle(_ route: Route)
}
