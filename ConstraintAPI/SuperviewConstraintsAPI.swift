//
//  SuperviewConstraintsAPI.swift
//  BoseHealthUIConstraints
//
//  Created by Swagat Mishra on 9/1/20.
//  Copyright © 2020 Bose Corporation. All rights reserved.
//

import UIKit

// MARK: - Superview Constraints API

public extension UIView {
    func anchorToSuperViewMargins() {
        anchorAllEdgesToSuperViewMargins()
        anchorCenterInSuperView()
    }

    func anchorToSuperViewSides() {
        anchorAllSidesToSuperView()
        anchorCenterInSuperView()
    }

    func anchorToSuperViewSafeAreaMargins() {
        anchorAllEdgesToSuperViewSafeArea()
        anchorCenterInSuperView()
    }

    func anchorToSuperViewSafeAreaSides() {
        anchorAllSidesToSuperViewSafeArea()
        anchorCenterInSuperView()
    }

    func anchorAllEdgesToSuperViewMargins() {
        guard let superview = superview else {
            fatalError("View does not have a superview to anchor into")
        }
        anchorAllEdgesToView(view: superview)
    }

    func anchorAllEdgesToSuperViewSafeArea() {
        guard let superview = superview else {
            fatalError("View does not have a superview to anchor into")
        }
        anchorAllEdgesToViewSafeArea(view: superview)
    }

    func anchorAllSidesToSuperView() {
        guard let superview = superview else {
            fatalError("View does not have a superview to anchor into")
        }
        anchorAllSidesToView(view: superview)
    }

    func anchorAllSidesToSuperViewSafeArea() {
        guard let superview = superview else {
            fatalError("View does not have a superview to anchor into")
        }
        anchorAllSidesToViewSafeArea(view: superview)
    }

    func anchorCenterInSuperView() {
        guard let superview = superview else {
            fatalError("View does not have a superview to anchor into")
        }
        anchorAxis(xAxis: superview.safeAreaLayoutGuide.centerXAnchor, yAxis: superview.safeAreaLayoutGuide.centerYAnchor)
    }
}
