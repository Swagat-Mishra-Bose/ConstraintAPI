//
//  RelativeViewConstraintsAPI.swift
//  BoseHealthUIConstraints
//
//  Created by Swagat Mishra on 9/1/20.
//  Copyright © 2020 Bose Corporation. All rights reserved.
//

import UIKit

// MARK: - Relative View Constraints API

public extension UIView {
    func anchorAllEdgesToView(view: UIView) {
        _ = anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
    }

    func anchorAllEdgesToViewSafeArea(view: UIView) {
        _ = anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.safeAreaLayoutGuide.rightAnchor)
    }

    func anchorAllSidesToView(view: UIView) {
        _ = anchor(top: view.topAnchor, left: view.leadingAnchor, bottom: view.bottomAnchor, right: view.trailingAnchor)
    }

    func anchorAllSidesToViewSafeArea(view: UIView) {
        _ = anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.safeAreaLayoutGuide.trailingAnchor)
    }
}
