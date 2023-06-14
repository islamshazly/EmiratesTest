//
//  LoaderView.swift
//  EmiratesTest
//
//  Created by Islam Elshazly on 14/06/2023.
//

import SwiftUI

struct LoaderView: View {

    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .blue))
            .scaleEffect(1)
    }
}

